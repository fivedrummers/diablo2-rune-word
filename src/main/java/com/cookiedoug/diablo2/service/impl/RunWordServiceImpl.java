package com.cookiedoug.diablo2.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cookiedoug.diablo2.dto.RuneWordAttributesDto;
import com.cookiedoug.diablo2.dto.RuneWordCombineDto;
import com.cookiedoug.diablo2.dto.RuneWordListDto;
import com.cookiedoug.diablo2.entity.Rune;
import com.cookiedoug.diablo2.entity.RuneWord;
import com.cookiedoug.diablo2.entity.RuneWordAttributes;
import com.cookiedoug.diablo2.enums.EquipmentType;
import com.cookiedoug.diablo2.mapper.RuneWordAttributesMapper;
import com.cookiedoug.diablo2.mapper.RuneMapper;
import com.cookiedoug.diablo2.mapper.RuneWordMapper;
import com.cookiedoug.diablo2.service.RuneWordService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RunWordServiceImpl extends ServiceImpl<RuneWordMapper, RuneWord> implements RuneWordService {

    @Resource
    private RuneMapper runeMapper;

    @Resource
    private RuneWordAttributesMapper runeWordAttributesMapper;

    @Override
    public RuneWordListDto combine(RuneWordCombineDto runeWordCombineDto) {
        RuneWord runeWord = new RuneWord();
        BeanUtils.copyProperties(runeWordCombineDto, runeWord);
        runeWord.setHoleNumber(runeWord.getRuneIds().split(",").length);
        saveOrUpdate(runeWord, new UpdateWrapper<RuneWord>().eq("name", runeWord.getName()));
        runeWordAttributesMapper.delete(new QueryWrapper<RuneWordAttributes>().eq("rune_word_id", runeWord.getId()));
        runeWordCombineDto.getRuneWordAttributesAddDtoList().parallelStream().forEach(t -> {
            RuneWordAttributes runeWordAttributes = new RuneWordAttributes();
            BeanUtils.copyProperties(t, runeWordAttributes);
            runeWordAttributes.setRuneWordId(runeWord.getId());
            runeWordAttributesMapper.insert(runeWordAttributes);
        });
        RuneWord savedRuneWord = getById(runeWord.getId());
        return getRuneWordListDto(savedRuneWord);
    }

    @Override
    public List<RuneWordListDto> listRuneWords(Integer runeWordId, Integer holeNumber, EquipmentType equipmentType) {
        List<RuneWord> list = lambdaQuery().eq(holeNumber != null, RuneWord::getHoleNumber, holeNumber)
                .eq(runeWordId != null, RuneWord::getId, runeWordId)
                .apply(equipmentType != null, "FIND_IN_SET({0}, equipment_types)", equipmentType).list();
        return list.stream().map(this::getRuneWordListDto).toList();
    }

    private RuneWordListDto getRuneWordListDto(RuneWord t) {
        RuneWordListDto runeWordListDto = new RuneWordListDto();
        runeWordListDto.setHoleNumber(t.getHoleNumber());
        runeWordListDto.setName(t.getName());
        List<Rune> runeList = runeMapper.selectList(new QueryWrapper<Rune>()
                .in("id", t.getRuneIds().split(",")).last("order by field(id, " + t.getRuneIds() + ")"));
        String runeDtos = runeList.stream().map(d -> d.getId() + "#" + d.getName()).collect(Collectors.joining(" + "));
        runeWordListDto.setRuneDtos(runeDtos);
        String equipmentTypeNames = Arrays.stream(t.getEquipmentTypes().split(",")).map(Integer::valueOf).
                map(d -> EquipmentType.values()[d].name()).collect(Collectors.joining("/"));
        runeWordListDto.setEquipmentTypeNames(equipmentTypeNames);
        runeWordListDto.setId(t.getId());
        List<RuneWordAttributesDto> runeWordAttributesDtoList = runeMapper.getRuneWordAttributes(t.getId());
        List<String> runeWordAttributesText = runeWordAttributesDtoList.stream().map(runeWordAttributesDto -> {
            String desc = runeWordAttributesDto.getDesc();
            String valueStr;
            if (runeWordAttributesDto.getMinValue() != null && runeWordAttributesDto.getMaxValue() != null) {
                valueStr = runeWordAttributesDto.getMinValue().stripTrailingZeros().toPlainString() +
                        "-" + runeWordAttributesDto.getMaxValue().stripTrailingZeros().toPlainString();
            } else {
                valueStr = runeWordAttributesDto.getValue().stripTrailingZeros().toPlainString();
            }
            String text = switch (runeWordAttributesDto.getAttributeType()) {
                case VALUE -> desc + (valueStr.startsWith("-") ? " " + valueStr : " +" + valueStr);
                case PERCENTAGE -> desc + " +" + valueStr + "%";
                case AMOUNT -> desc + " (" + valueStr + "次充能）";
                case NON_LINEAR_PERCENTAGE -> valueStr + "% 几率" + desc;
                case COEFFICIENT -> desc + " +" + valueStr + "(依角色等级而定) [" +
                        runeWordAttributesDto.getValue().stripTrailingZeros().toPlainString() + " * 等级]";
                case SPECIAL -> desc;
            };
            if (runeWordAttributesDto.getEquipmentType() != null) {
                text += "(只限" + runeWordAttributesDto.getEquipmentType() + ")";
            }
            return text;
        }).toList();
        runeWordListDto.setRuneWordAttributesText(runeWordAttributesText);
        return runeWordListDto;
    }
}

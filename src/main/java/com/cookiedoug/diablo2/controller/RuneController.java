package com.cookiedoug.diablo2.controller;

import com.cookiedoug.diablo2.dto.AttributeDto;
import com.cookiedoug.diablo2.dto.RuneDto;
import com.cookiedoug.diablo2.dto.RuneWordCombineDto;
import com.cookiedoug.diablo2.dto.RuneWordListDto;
import com.cookiedoug.diablo2.enums.EquipmentType;
import com.cookiedoug.diablo2.service.AttributeService;
import com.cookiedoug.diablo2.service.RuneService;
import com.cookiedoug.diablo2.service.RuneWordService;
import org.springframework.beans.BeanUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/rune")
public class RuneController {
    @Resource
    private RuneService runeService;

    @Resource
    private AttributeService attributeService;

    @Resource
    private RuneWordService runeWordService;

    @PostMapping("/combineRunes")
    public ResponseEntity<RuneWordListDto> combineRunes(@RequestBody RuneWordCombineDto runeWordCombineDto) {
        String runeIds = runeWordCombineDto.getRuneIds().replace(" ", "");
        String equipmentTypes = runeWordCombineDto.getEquipmentTypes().replace(" ", "");
        runeWordCombineDto.setRuneIds(runeIds);
        runeWordCombineDto.setEquipmentTypes(equipmentTypes);
        return ResponseEntity.ok(runeWordService.combine(runeWordCombineDto));
    }

    @GetMapping("/listRuneWords")
    public ResponseEntity<List<RuneWordListDto>> listRuneWords(
            @RequestParam(value = "runeWordId", required = false) Integer runeWordId,
            @RequestParam(value = "holeNumber", required = false) Integer holeNumber,
            @RequestParam(value = "equipmentType", required = false) EquipmentType equipmentType) {
        return ResponseEntity.ok(runeWordService.listRuneWords(runeWordId, holeNumber, equipmentType));
    }

    @GetMapping("/listRunes")
    public ResponseEntity<List<RuneDto>> listRunes() {
        List<RuneDto> runeDtoList = runeService.list().stream().map(t -> {
            RuneDto runeDto = new RuneDto();
            BeanUtils.copyProperties(t, runeDto);
            return runeDto;
        }).toList();
        return ResponseEntity.ok(runeDtoList);
    }

    @GetMapping("/listAttributes")
    public ResponseEntity<List<AttributeDto>> listAttributes() {
        List<AttributeDto> attributeDtoList = attributeService.list().stream().map(t -> {
            AttributeDto attributeDto = new AttributeDto();
            BeanUtils.copyProperties(t, attributeDto);
            return attributeDto;
        }).toList();
        return ResponseEntity.ok(attributeDtoList);
    }
}

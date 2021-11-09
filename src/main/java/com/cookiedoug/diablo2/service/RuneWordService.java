package com.cookiedoug.diablo2.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cookiedoug.diablo2.dto.RuneWordCombineDto;
import com.cookiedoug.diablo2.dto.RuneWordListDto;
import com.cookiedoug.diablo2.entity.RuneWord;
import com.cookiedoug.diablo2.enums.EquipmentType;

import java.util.List;

public interface RuneWordService extends IService<RuneWord> {
    RuneWordListDto combine(RuneWordCombineDto runeWordCombineDto);

    List<RuneWordListDto> listRuneWords(Integer runeWordId, Integer holeNumber, EquipmentType equipmentType);
}

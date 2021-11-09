package com.cookiedoug.diablo2.dto;

import lombok.Data;

import java.util.List;

@Data
public class RuneWordCombineDto {
    private String runeIds;
    private String name;
    private String equipmentTypes;

    private List<RuneWordAttributesAddDto> runeWordAttributesAddDtoList;
}

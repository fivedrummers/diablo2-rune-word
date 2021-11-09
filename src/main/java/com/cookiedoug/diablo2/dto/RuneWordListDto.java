package com.cookiedoug.diablo2.dto;

import lombok.Data;

import java.util.List;

@Data
public class RuneWordListDto {
    private int id;
    private String runeDtos;
    private String name;
    private String equipmentTypeNames;
    private int holeNumber;
    private List<String> runeWordAttributesText;
}

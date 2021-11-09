package com.cookiedoug.diablo2.dto;

import com.cookiedoug.diablo2.enums.EquipmentType;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class RuneWordAttributesAddDto {
    private Integer attributeId;
    private BigDecimal value;
    private BigDecimal minValue;
    private BigDecimal maxValue;
    private EquipmentType equipmentType;
}

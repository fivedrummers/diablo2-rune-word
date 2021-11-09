package com.cookiedoug.diablo2.entity;


import com.cookiedoug.diablo2.enums.EquipmentType;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class RuneWordAttributes {

    private Integer runeWordId;
    private Integer attributeId;
    private BigDecimal value;
    private BigDecimal minValue;
    private BigDecimal maxValue;
    private EquipmentType equipmentType;


}

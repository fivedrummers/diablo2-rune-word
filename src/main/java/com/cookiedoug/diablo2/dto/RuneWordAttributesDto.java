package com.cookiedoug.diablo2.dto;


import com.cookiedoug.diablo2.enums.AttributeType;
import com.cookiedoug.diablo2.enums.EquipmentType;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class RuneWordAttributesDto {
    private BigDecimal value;
    private BigDecimal minValue;
    private BigDecimal maxValue;
    private EquipmentType equipmentType;
    private String desc;
    private AttributeType attributeType;

}

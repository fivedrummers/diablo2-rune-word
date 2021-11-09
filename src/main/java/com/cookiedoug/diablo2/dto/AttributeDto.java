package com.cookiedoug.diablo2.dto;

import com.cookiedoug.diablo2.enums.AttributeType;
import lombok.Data;

@Data
public class AttributeDto {
    private int id;
    private String desc;
    private AttributeType type;
}

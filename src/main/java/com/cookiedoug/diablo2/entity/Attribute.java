package com.cookiedoug.diablo2.entity;

import com.cookiedoug.diablo2.enums.AttributeType;
import lombok.Data;

@Data
public class Attribute {

  private String name;
  private String desc;
  private AttributeType attributeType;

}

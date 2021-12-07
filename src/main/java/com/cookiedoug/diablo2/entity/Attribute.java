package com.cookiedoug.diablo2.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.cookiedoug.diablo2.enums.AttributeType;
import lombok.Data;

@Data
public class Attribute {

  private int id;
  @TableField("`desc`")
  private String desc;
  private AttributeType type;

}

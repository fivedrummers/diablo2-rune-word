package com.cookiedoug.diablo2.enums;

import com.baomidou.mybatisplus.annotation.IEnum;

public enum AttributeType implements IEnum<Integer> {
    VALUE, PERCENTAGE, AMOUNT, NON_LINEAR_PERCENTAGE, COEFFICIENT, SPECIAL;

    @Override
    public Integer getValue() {
        return this.ordinal();
    }
}

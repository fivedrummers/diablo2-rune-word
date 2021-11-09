package com.cookiedoug.diablo2.enums;

import com.baomidou.mybatisplus.annotation.IEnum;

public enum EquipmentType implements IEnum<Integer> {
    HELMET, ARMOR, SHIELD, SWORD, MACE, AXE, STICK, POLEARM, SCEPTER, WAND, STAVE, BOW, FIST_WEAPON, PALADIN_SHIELD, MELEE_WEAPON, WEAPON;

    @Override
    public Integer getValue() {
        return this.ordinal();
    }
}

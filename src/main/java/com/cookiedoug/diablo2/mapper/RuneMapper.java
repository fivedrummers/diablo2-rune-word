package com.cookiedoug.diablo2.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cookiedoug.diablo2.dto.RuneWordAttributesDto;
import com.cookiedoug.diablo2.entity.Rune;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface RuneMapper extends BaseMapper<Rune> {
    @Select("""
            SELECT
            	wa.`value`,
            	wa.min_value,
            	wa.max_value,
            	wa.equipment_type,
            	a.`desc`,
            	a.type attributeType
            FROM
            	rune_word_attributes wa
            	LEFT JOIN attribute a ON a.id = wa.attribute_id
            WHERE
            	rune_word_id = #{runeWordId}
            ORDER BY
            	a.id
            """)
    List<RuneWordAttributesDto> getRuneWordAttributes(int runeWordId);
}

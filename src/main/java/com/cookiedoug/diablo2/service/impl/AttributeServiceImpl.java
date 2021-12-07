package com.cookiedoug.diablo2.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cookiedoug.diablo2.entity.Attribute;
import com.cookiedoug.diablo2.mapper.AttributeMapper;
import com.cookiedoug.diablo2.service.AttributeService;
import org.springframework.stereotype.Service;

@Service
public class AttributeServiceImpl extends ServiceImpl<AttributeMapper, Attribute> implements AttributeService {
}

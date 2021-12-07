package com.cookiedoug.diablo2.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cookiedoug.diablo2.entity.Rune;
import com.cookiedoug.diablo2.mapper.RuneMapper;
import com.cookiedoug.diablo2.service.RuneService;
import org.springframework.stereotype.Service;

@Service
public class RuneServiceImpl extends ServiceImpl<RuneMapper, Rune> implements RuneService {
}

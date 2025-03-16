package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.KeshiliebiaoDao;
import com.entity.KeshiliebiaoEntity;
import com.service.KeshiliebiaoService;
import com.entity.vo.KeshiliebiaoVO;
import com.entity.view.KeshiliebiaoView;

@Service("keshiliebiaoService")
public class KeshiliebiaoServiceImpl extends ServiceImpl<KeshiliebiaoDao, KeshiliebiaoEntity> implements KeshiliebiaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KeshiliebiaoEntity> page = this.selectPage(
                new Query<KeshiliebiaoEntity>(params).getPage(),
                new EntityWrapper<KeshiliebiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KeshiliebiaoEntity> wrapper) {
		  Page<KeshiliebiaoView> page =new Query<KeshiliebiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KeshiliebiaoVO> selectListVO(Wrapper<KeshiliebiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KeshiliebiaoVO selectVO(Wrapper<KeshiliebiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KeshiliebiaoView> selectListView(Wrapper<KeshiliebiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KeshiliebiaoView selectView(Wrapper<KeshiliebiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

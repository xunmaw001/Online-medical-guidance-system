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


import com.dao.ZhichengliebiaoDao;
import com.entity.ZhichengliebiaoEntity;
import com.service.ZhichengliebiaoService;
import com.entity.vo.ZhichengliebiaoVO;
import com.entity.view.ZhichengliebiaoView;

@Service("zhichengliebiaoService")
public class ZhichengliebiaoServiceImpl extends ServiceImpl<ZhichengliebiaoDao, ZhichengliebiaoEntity> implements ZhichengliebiaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhichengliebiaoEntity> page = this.selectPage(
                new Query<ZhichengliebiaoEntity>(params).getPage(),
                new EntityWrapper<ZhichengliebiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhichengliebiaoEntity> wrapper) {
		  Page<ZhichengliebiaoView> page =new Query<ZhichengliebiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhichengliebiaoVO> selectListVO(Wrapper<ZhichengliebiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhichengliebiaoVO selectVO(Wrapper<ZhichengliebiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhichengliebiaoView> selectListView(Wrapper<ZhichengliebiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhichengliebiaoView selectView(Wrapper<ZhichengliebiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

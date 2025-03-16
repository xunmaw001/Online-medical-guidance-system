package com.dao;

import com.entity.ZhichengliebiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhichengliebiaoVO;
import com.entity.view.ZhichengliebiaoView;


/**
 * 职称列表
 * 
 * @author 
 * @email 
 * @date 2021-02-26 17:52:52
 */
public interface ZhichengliebiaoDao extends BaseMapper<ZhichengliebiaoEntity> {
	
	List<ZhichengliebiaoVO> selectListVO(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
	
	ZhichengliebiaoVO selectVO(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
	
	List<ZhichengliebiaoView> selectListView(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);

	List<ZhichengliebiaoView> selectListView(Pagination page,@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
	
	ZhichengliebiaoView selectView(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
	
}

package com.dao;

import com.entity.KeshiliebiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KeshiliebiaoVO;
import com.entity.view.KeshiliebiaoView;


/**
 * 科室列表
 * 
 * @author 
 * @email 
 * @date 2021-02-26 17:52:52
 */
public interface KeshiliebiaoDao extends BaseMapper<KeshiliebiaoEntity> {
	
	List<KeshiliebiaoVO> selectListVO(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
	
	KeshiliebiaoVO selectVO(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
	
	List<KeshiliebiaoView> selectListView(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);

	List<KeshiliebiaoView> selectListView(Pagination page,@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
	
	KeshiliebiaoView selectView(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
	
}

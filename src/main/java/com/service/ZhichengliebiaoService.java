package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhichengliebiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhichengliebiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhichengliebiaoView;


/**
 * 职称列表
 *
 * @author 
 * @email 
 * @date 2021-02-26 17:52:52
 */
public interface ZhichengliebiaoService extends IService<ZhichengliebiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhichengliebiaoVO> selectListVO(Wrapper<ZhichengliebiaoEntity> wrapper);
   	
   	ZhichengliebiaoVO selectVO(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
   	
   	List<ZhichengliebiaoView> selectListView(Wrapper<ZhichengliebiaoEntity> wrapper);
   	
   	ZhichengliebiaoView selectView(@Param("ew") Wrapper<ZhichengliebiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhichengliebiaoEntity> wrapper);
   	
}


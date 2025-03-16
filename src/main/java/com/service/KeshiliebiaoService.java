package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KeshiliebiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KeshiliebiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KeshiliebiaoView;


/**
 * 科室列表
 *
 * @author 
 * @email 
 * @date 2021-02-26 17:52:52
 */
public interface KeshiliebiaoService extends IService<KeshiliebiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KeshiliebiaoVO> selectListVO(Wrapper<KeshiliebiaoEntity> wrapper);
   	
   	KeshiliebiaoVO selectVO(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
   	
   	List<KeshiliebiaoView> selectListView(Wrapper<KeshiliebiaoEntity> wrapper);
   	
   	KeshiliebiaoView selectView(@Param("ew") Wrapper<KeshiliebiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KeshiliebiaoEntity> wrapper);
   	
}


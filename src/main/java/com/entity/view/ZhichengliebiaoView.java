package com.entity.view;

import com.entity.ZhichengliebiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 职称列表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-02-26 17:52:52
 */
@TableName("zhichengliebiao")
public class ZhichengliebiaoView  extends ZhichengliebiaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhichengliebiaoView(){
	}
 
 	public ZhichengliebiaoView(ZhichengliebiaoEntity zhichengliebiaoEntity){
 	try {
			BeanUtils.copyProperties(this, zhichengliebiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}

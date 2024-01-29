package com.entity.view;

import com.entity.ShangpinpeisongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商品配送
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-22 15:57:55
 */
@TableName("shangpinpeisong")
public class ShangpinpeisongView  extends ShangpinpeisongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangpinpeisongView(){
	}
 
 	public ShangpinpeisongView(ShangpinpeisongEntity shangpinpeisongEntity){
 	try {
			BeanUtils.copyProperties(this, shangpinpeisongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}

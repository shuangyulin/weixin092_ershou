package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShangpinpeisongEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShangpinpeisongVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShangpinpeisongView;


/**
 * 商品配送
 *
 * @author 
 * @email 
 * @date 2021-03-22 15:57:55
 */
public interface ShangpinpeisongService extends IService<ShangpinpeisongEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangpinpeisongVO> selectListVO(Wrapper<ShangpinpeisongEntity> wrapper);
   	
   	ShangpinpeisongVO selectVO(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
   	
   	List<ShangpinpeisongView> selectListView(Wrapper<ShangpinpeisongEntity> wrapper);
   	
   	ShangpinpeisongView selectView(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangpinpeisongEntity> wrapper);
   	
}


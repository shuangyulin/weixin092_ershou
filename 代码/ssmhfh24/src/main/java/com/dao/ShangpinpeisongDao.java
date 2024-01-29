package com.dao;

import com.entity.ShangpinpeisongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangpinpeisongVO;
import com.entity.view.ShangpinpeisongView;


/**
 * 商品配送
 * 
 * @author 
 * @email 
 * @date 2021-03-22 15:57:55
 */
public interface ShangpinpeisongDao extends BaseMapper<ShangpinpeisongEntity> {
	
	List<ShangpinpeisongVO> selectListVO(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
	
	ShangpinpeisongVO selectVO(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
	
	List<ShangpinpeisongView> selectListView(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);

	List<ShangpinpeisongView> selectListView(Pagination page,@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
	
	ShangpinpeisongView selectView(@Param("ew") Wrapper<ShangpinpeisongEntity> wrapper);
	
}

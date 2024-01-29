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


import com.dao.ShangpinpeisongDao;
import com.entity.ShangpinpeisongEntity;
import com.service.ShangpinpeisongService;
import com.entity.vo.ShangpinpeisongVO;
import com.entity.view.ShangpinpeisongView;

@Service("shangpinpeisongService")
public class ShangpinpeisongServiceImpl extends ServiceImpl<ShangpinpeisongDao, ShangpinpeisongEntity> implements ShangpinpeisongService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangpinpeisongEntity> page = this.selectPage(
                new Query<ShangpinpeisongEntity>(params).getPage(),
                new EntityWrapper<ShangpinpeisongEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangpinpeisongEntity> wrapper) {
		  Page<ShangpinpeisongView> page =new Query<ShangpinpeisongView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShangpinpeisongVO> selectListVO(Wrapper<ShangpinpeisongEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShangpinpeisongVO selectVO(Wrapper<ShangpinpeisongEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShangpinpeisongView> selectListView(Wrapper<ShangpinpeisongEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangpinpeisongView selectView(Wrapper<ShangpinpeisongEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}

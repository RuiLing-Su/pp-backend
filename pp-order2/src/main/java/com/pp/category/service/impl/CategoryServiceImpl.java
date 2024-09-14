package com.pp.category.service.impl;

import java.util.List;
import com.pp.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pp.category.mapper.CategoryMapper;
import com.pp.category.domain.Category;
import com.pp.category.service.ICategoryService;

/**
 * 菜品及套餐分类Service业务层处理
 * 
 * @author SuRL
 * @date 2024-08-25
 */
@Service
public class CategoryServiceImpl implements ICategoryService 
{
    @Autowired
    private CategoryMapper categoryMapper;

    /**
     * 查询菜品及套餐分类
     * 
     * @param id 菜品及套餐分类主键
     * @return 菜品及套餐分类
     */
    @Override
    public Category selectCategoryById(Long id)
    {
        return categoryMapper.selectCategoryById(id);
    }

    /**
     * 查询菜品及套餐分类列表
     * 
     * @param category 菜品及套餐分类
     * @return 菜品及套餐分类
     */
    @Override
    public List<Category> selectCategoryList(Category category)
    {
        return categoryMapper.selectCategoryList(category);
    }

    /**
     * 新增菜品及套餐分类
     * 
     * @param category 菜品及套餐分类
     * @return 结果
     */
    @Override
    public int insertCategory(Category category)
    {
        category.setCreateTime(DateUtils.getNowDate());
        return categoryMapper.insertCategory(category);
    }

    /**
     * 修改菜品及套餐分类
     * 
     * @param category 菜品及套餐分类
     * @return 结果
     */
    @Override
    public int updateCategory(Category category)
    {
        category.setUpdateTime(DateUtils.getNowDate());
        return categoryMapper.updateCategory(category);
    }

    /**
     * 批量删除菜品及套餐分类
     * 
     * @param ids 需要删除的菜品及套餐分类主键
     * @return 结果
     */
    @Override
    public int deleteCategoryByIds(Long[] ids)
    {
        return categoryMapper.deleteCategoryByIds(ids);
    }

    /**
     * 删除菜品及套餐分类信息
     * 
     * @param id 菜品及套餐分类主键
     * @return 结果
     */
    @Override
    public int deleteCategoryById(Long id)
    {
        return categoryMapper.deleteCategoryById(id);
    }
}

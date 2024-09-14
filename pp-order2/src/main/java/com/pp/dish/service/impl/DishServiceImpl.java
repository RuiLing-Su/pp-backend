package com.pp.dish.service.impl;

import java.util.List;
import com.pp.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.pp.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.pp.dish.domain.CategoryDish;
import com.pp.dish.domain.DishFlavor;
import com.pp.dish.mapper.DishMapper;
import com.pp.dish.domain.Dish;
import com.pp.dish.service.IDishService;

/**
 * 菜品管理Service业务层处理
 *
 * @author SuRL
 * @date 2024-08-25
 */
@Service
public class DishServiceImpl implements IDishService
{
    @Autowired
    private DishMapper dishMapper;

    /**
     * 查询菜品管理
     *
     * @param id 菜品管理主键
     * @return 菜品管理
     */
    @Override
    public Dish selectDishById(Long id)
    {
        return dishMapper.selectDishById(id);
    }

    /**
     * 查询菜品管理列表
     *
     * @param dish 菜品管理
     * @return 菜品管理
     */
    @Override
    public List<Dish> selectDishList(Dish dish)
    {
        return dishMapper.selectDishList(dish);
    }

    /**
     * 新增菜品管理
     *
     * @param dish 菜品管理
     * @return 结果
     */
    @Transactional
    @Override
    public int insertDish(Dish dish)
    {
        dish.setCreateTime(DateUtils.getNowDate());
        int rows = dishMapper.insertDish(dish);
        insertCategoryDish(dish);
        insertDishFlavor(dish);
        return rows;
    }

    /**
     * 修改菜品管理
     *
     * @param dish 菜品管理
     * @return 结果
     */
    @Transactional
    @Override
    public int updateDish(Dish dish)
    {
        dish.setUpdateTime(DateUtils.getNowDate());
        dishMapper.deleteCategoryDishById(dish.getId());
        dishMapper.deleteDishFlavorByDishId(dish.getId());
        insertDishFlavor(dish);
        return dishMapper.updateDish(dish);
    }

    /**
     * 批量删除菜品管理
     *
     * @param ids 需要删除的菜品管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteDishByIds(Long[] ids)
    {
        dishMapper.deleteCategoryDishByIds(ids);
        dishMapper.deleteDishFlavorByDishIds(ids);
        return dishMapper.deleteDishByIds(ids);
    }

    /**
     * 删除菜品管理信息
     *
     * @param id 菜品管理主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteDishById(Long id)
    {
        dishMapper.deleteCategoryDishById(id);
        dishMapper.deleteDishFlavorByDishId(id);
        return dishMapper.deleteDishById(id);
    }

    /**
     * 新增菜品及套餐分类信息
     *
     * @param dish 菜品管理对象
     */
    public void insertCategoryDish(Dish dish)
    {
        List<CategoryDish> categoryDishList = dish.getCategoryDishList();
        Long id = dish.getId();
        if (StringUtils.isNotNull(categoryDishList))
        {
            List<CategoryDish> list = new ArrayList<CategoryDish>();
            for (CategoryDish categoryDish : categoryDishList)
            {
                categoryDish.setId(id);
                list.add(categoryDish);
            }
            if (list.size() > 0)
            {
                dishMapper.batchCategoryDish(list);
            }
        }
    }
    /**
     * 新增菜品口味关系信息
     *
     * @param dish 菜品管理对象
     */
    public void insertDishFlavor(Dish dish)
    {
        List<DishFlavor> dishFlavorList = dish.getDishFlavorList();
        Long id = dish.getId();
        if (StringUtils.isNotNull(dishFlavorList))
        {
            List<DishFlavor> list = new ArrayList<DishFlavor>();
            for (DishFlavor dishFlavor : dishFlavorList)
            {
                dishFlavor.setDishId(id);
                list.add(dishFlavor);
            }
            if (list.size() > 0)
            {
                dishMapper.batchDishFlavor(list);
            }
        }
    }
}

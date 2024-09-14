package com.pp.setmeal.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pp.common.annotation.Excel;
import com.pp.common.core.domain.BaseEntity;

/**
 * 套餐菜品关系对象 tb_setmeal_dish
 * 
 * @author SuRL
 * @date 2024-08-28
 */
public class SetmealDish extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 套餐id  */
    @Excel(name = "套餐id ")
    private String setmealId;

    /** 菜品id */
    @Excel(name = "菜品id")
    private String dishId;

    /** 菜品名称 （冗余字段） */
    @Excel(name = "菜品名称 ", readConverterExp = "冗=余字段")
    private String name;

    /** 菜品原价（冗余字段） */
    @Excel(name = "菜品原价", readConverterExp = "冗=余字段")
    private BigDecimal price;

    /** 份数 */
    @Excel(name = "份数")
    private Long copies;

    /** 排序 */
    @Excel(name = "排序")
    private Long sort;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSetmealId(String setmealId) 
    {
        this.setmealId = setmealId;
    }

    public String getSetmealId() 
    {
        return setmealId;
    }
    public void setDishId(String dishId) 
    {
        this.dishId = dishId;
    }

    public String getDishId() 
    {
        return dishId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }
    public void setCopies(Long copies) 
    {
        this.copies = copies;
    }

    public Long getCopies() 
    {
        return copies;
    }
    public void setSort(Long sort) 
    {
        this.sort = sort;
    }

    public Long getSort() 
    {
        return sort;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("setmealId", getSetmealId())
            .append("dishId", getDishId())
            .append("name", getName())
            .append("price", getPrice())
            .append("copies", getCopies())
            .append("sort", getSort())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}

package com.pp.category.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.pp.common.annotation.Log;
import com.pp.common.core.controller.BaseController;
import com.pp.common.core.domain.AjaxResult;
import com.pp.common.enums.BusinessType;
import com.pp.category.domain.Category;
import com.pp.category.service.ICategoryService;
import com.pp.common.utils.poi.ExcelUtil;
import com.pp.common.core.page.TableDataInfo;

/**
 * 菜品及套餐分类Controller
 * 
 * @author SuRL
 * @date 2024-08-25
 */
@RestController
@RequestMapping("/category/category")
public class CategoryController extends BaseController
{
    @Autowired
    private ICategoryService categoryService;

    /**
     * 查询菜品及套餐分类列表
     */
    @PreAuthorize("@ss.hasPermi('category:category:list')")
    @GetMapping("/list")
    public TableDataInfo list(Category category)
    {
        startPage();
        List<Category> list = categoryService.selectCategoryList(category);
        return getDataTable(list);
    }

    /**
     * 导出菜品及套餐分类列表
     */
    @PreAuthorize("@ss.hasPermi('category:category:export')")
    @Log(title = "菜品及套餐分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Category category)
    {
        List<Category> list = categoryService.selectCategoryList(category);
        ExcelUtil<Category> util = new ExcelUtil<Category>(Category.class);
        util.exportExcel(response, list, "菜品及套餐分类数据");
    }

    /**
     * 获取菜品及套餐分类详细信息
     */
    @PreAuthorize("@ss.hasPermi('category:category:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(categoryService.selectCategoryById(id));
    }

    /**
     * 新增菜品及套餐分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:add')")
    @Log(title = "菜品及套餐分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Category category)
    {
        return toAjax(categoryService.insertCategory(category));
    }

    /**
     * 修改菜品及套餐分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:edit')")
    @Log(title = "菜品及套餐分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Category category)
    {
        return toAjax(categoryService.updateCategory(category));
    }

    /**
     * 删除菜品及套餐分类
     */
    @PreAuthorize("@ss.hasPermi('category:category:remove')")
    @Log(title = "菜品及套餐分类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(categoryService.deleteCategoryByIds(ids));
    }
}

package com.pp.orders.mapper;

import java.util.List;
import com.pp.orders.domain.Orders;
import com.pp.orders.domain.OrderDetail;

/**
 * 订单Mapper接口
 * 
 * @author SuRL
 * @date 2024-09-02
 */
public interface OrdersMapper 
{
    /**
     * 查询订单
     * 
     * @param id 订单主键
     * @return 订单
     */
    public Orders selectOrdersById(Long id);

    /**
     * 查询订单列表
     * 
     * @param orders 订单
     * @return 订单集合
     */
    public List<Orders> selectOrdersList(Orders orders);

    /**
     * 新增订单
     * 
     * @param orders 订单
     * @return 结果
     */
    public int insertOrders(Orders orders);

    /**
     * 修改订单
     * 
     * @param orders 订单
     * @return 结果
     */
    public int updateOrders(Orders orders);

    /**
     * 删除订单
     * 
     * @param id 订单主键
     * @return 结果
     */
    public int deleteOrdersById(Long id);

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrdersByIds(Long[] ids);

    /**
     * 批量删除订单明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOrderDetailByOrderIds(Long[] ids);
    
    /**
     * 批量新增订单明细
     * 
     * @param orderDetailList 订单明细列表
     * @return 结果
     */
    public int batchOrderDetail(List<OrderDetail> orderDetailList);
    

    /**
     * 通过订单主键删除订单明细信息
     * 
     * @param id 订单ID
     * @return 结果
     */
    public int deleteOrderDetailByOrderId(Long id);
}

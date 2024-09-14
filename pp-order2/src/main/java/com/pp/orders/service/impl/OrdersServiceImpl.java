package com.pp.orders.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.pp.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.pp.orders.domain.OrderDetail;
import com.pp.orders.mapper.OrdersMapper;
import com.pp.orders.domain.Orders;
import com.pp.orders.service.IOrdersService;

/**
 * 订单Service业务层处理
 * 
 * @author SuRL
 * @date 2024-09-02
 */
@Service
public class OrdersServiceImpl implements IOrdersService 
{
    @Autowired
    private OrdersMapper ordersMapper;

    /**
     * 查询订单
     * 
     * @param id 订单主键
     * @return 订单
     */
    @Override
    public Orders selectOrdersById(Long id)
    {
        return ordersMapper.selectOrdersById(id);
    }

    /**
     * 查询订单列表
     * 
     * @param orders 订单
     * @return 订单
     */
    @Override
    public List<Orders> selectOrdersList(Orders orders)
    {
        return ordersMapper.selectOrdersList(orders);
    }

    /**
     * 新增订单
     * 
     * @param orders 订单
     * @return 结果
     */
    @Transactional
    @Override
    public int insertOrders(Orders orders)
    {
        int rows = ordersMapper.insertOrders(orders);
        insertOrderDetail(orders);
        return rows;
    }

    /**
     * 修改订单
     * 
     * @param orders 订单
     * @return 结果
     */
    @Transactional
    @Override
    public int updateOrders(Orders orders)
    {
        ordersMapper.deleteOrderDetailByOrderId(orders.getId());
        insertOrderDetail(orders);
        return ordersMapper.updateOrders(orders);
    }

    /**
     * 批量删除订单
     * 
     * @param ids 需要删除的订单主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteOrdersByIds(Long[] ids)
    {
        ordersMapper.deleteOrderDetailByOrderIds(ids);
        return ordersMapper.deleteOrdersByIds(ids);
    }

    /**
     * 删除订单信息
     * 
     * @param id 订单主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteOrdersById(Long id)
    {
        ordersMapper.deleteOrderDetailByOrderId(id);
        return ordersMapper.deleteOrdersById(id);
    }

    /**
     * 新增订单明细信息
     * 
     * @param orders 订单对象
     */
    public void insertOrderDetail(Orders orders)
    {
        List<OrderDetail> orderDetailList = orders.getOrderDetailList();
        Long id = orders.getId();
        if (StringUtils.isNotNull(orderDetailList))
        {
            List<OrderDetail> list = new ArrayList<OrderDetail>();
            for (OrderDetail orderDetail : orderDetailList)
            {
                orderDetail.setOrderId(id);
                list.add(orderDetail);
            }
            if (list.size() > 0)
            {
                ordersMapper.batchOrderDetail(list);
            }
        }
    }
}

package com.trica.dao;

import java.util.HashMap;
import java.util.List;

import com.trica.vo.DeliveryVO;
import com.trica.vo.OrderProductVO;
import com.trica.vo.OrderVO;

public interface OrderDAO {
	public int insertOrder(OrderVO vo);
	public int insertOrderProduct(OrderProductVO vo);
<<<<<<< HEAD
	public int getTotalCount(String memberId);
	public List<HashMap> selectOrder(String memberId, int firstRow, int endRow);
	int insertDelivery(DeliveryVO vo);
}
=======
	public int insertDelivery(DeliveryVO vo);
	public int decreaseStock(OrderProductVO vo);
}
>>>>>>> branch 'master' of https://github.com/tnqkr3753/Trica.git

package cont;



import java.util.List;


import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dto.MemberDto;
import dto.OrderDto;

@Controller
@RequestMapping("orderlist")
public class OrderListController {
	private MemberDaoImple memberDao;
	private OrderDaoImple orderDao;
	public OrderListController setOrderDao(OrderDaoImple orderDao) {
		this.orderDao = orderDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET) // 마이페이지 주문조회
	public String form(Model model, HttpSession session, String id) throws Exception {
		MemberDto member = (MemberDto) session.getAttribute("authInfo");
		List<OrderDto> mypageOrderList = orderDao.MypageOrder(member.getEmail());
		  for(int i=0; i<mypageOrderList.size(); i++) {
	    	  //System.out.println(mypageOrderList.get(i).getPname());
	      }
		//List<OrderDto> orderlist = orderDao.maxOseq("maxOseq", orderDao.maxOseq(oseq);
		 //model.addAttribute("maxOseq",orderDao.maxOseq(oseq));
		  model.addAttribute("mypageOrderList", mypageOrderList);
			return "order/WDMypage_Order";
		}		
	
}

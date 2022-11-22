package cont;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.ProductDaoImple;
import dto.CartDto;
import dto.MemberDto;
@Controller
@RequestMapping("cart/*")
//@RequestMapping(value="cart/cartinsert")
public class CartInsertController {
   private MemberDaoImple memberDao;
   private ProductDaoImple productDao;
   private CartDaoImple cartDao;
   public CartInsertController setCartDao(CartDaoImple cartDao) {
      this.cartDao = cartDao;
      return this;
   }
   @RequestMapping(method = RequestMethod.GET)
 //@RequestMapping(value="cart/cartinsert")
   @GetMapping("cartinsert")//장바구니 추가
  // public String submit(@ModelAttribute CartDto vo,MemberDto loginCommand, HttpSession session,
	//	   Model model, @RequestParam("pseq") int pseq,
   //      @RequestParam("quantity") int quantity) throws Exception {
   	public String submit(HttpSession session, Model model, @RequestParam("pseq")int pseq,
   			@RequestParam("quantity") int quantity) throws Exception {
      MemberDto member = (MemberDto) session.getAttribute("authInfo");
      if(member == null) {
    	  return "member/WDLogin";
      }else {
	      CartDto cartlist = new CartDto();
	      CartDto cart = new CartDto();
	      cartlist.setId(member.getEmail());
	      cartlist.setQuantity(quantity);
	      cartlist.setPseq(pseq);

	      cart = cartDao.select(cartlist);
	      if(cart==null) {
	    	  cartDao.insert(member.getEmail(), pseq, quantity);
	      }else {
	    	  cartDao.updateCart(member.getEmail(), pseq, quantity, cart.getQuantity());
	      }	     
	      //cartDao.insert(member.getEmail(), pseq, quantity);
      //return "redirect:cartlist"; // 리다이렉트할 때는, 폴더명이 없어도 된다
      //int count =  cartDao.countCart(member.getEmail(), vo.getPseq()); 
      //count == 0 ? cartDao.updateCart(vo): cartDao.insert(vo);{
    	//if(count == 0) {  // 없으면 insert
    	//  cartDao.insert(vo);
   //   }else { // 있으면 update
   // 	  cartDao.updateCart(vo);
   //   }
      return "redirect:cartlist";    
	}  
 }
     @GetMapping("updateCart")//장바구니 수정
  // public String update(@RequestParam int[]quantity, @RequestParam int[] pseq,
   public String update(CartDto cartdto, Model model,@RequestParam("quantity")int quantity,
		   @RequestParam("pseq")int pseq, HttpSession session) throws Exception{
    	  MemberDto member = (MemberDto) session.getAttribute("authInfo");
    	  try{
		   cartDao.updateqQuantity(member.getEmail(), pseq, quantity);
    	  }catch (Exception e) {
	         e.printStackTrace();   
	     } 
    	  return "redirect:cartlist";
	  }

}
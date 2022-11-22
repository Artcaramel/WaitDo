package config;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import cont.AddressAddController;
import cont.AddressController;
import cont.AddressDeleteController;
import cont.CartDeleteController;
import cont.AdminErrorController;
import cont.AdminMainController;
import cont.AdminMemberDeleteController;
import cont.AdminMemberListController;
import cont.AdminMyPageController;
import cont.AdminQnaDeleteController;
import cont.AdminQnaListController;
import cont.AdminQnaReplyController;
import cont.AdminReadOnlyController;
import cont.CartInsertController;
import cont.CartListController;
import cont.CategoryController;
import cont.ChangeEmailController;
import cont.ChangePwdController;
import cont.DeleteController;
import cont.FindEmailController;
import cont.FindEmailFormController;
import cont.FindPwdController;
import cont.FindPwdFormController;
import cont.HelpMenuChangeController;
import cont.HelpMenuController;
import cont.HelpMenuOrderController;
import cont.HelpMenuPaymentController;
import cont.HelpMenuProductController;
import cont.IndexController;
import cont.LogInController;
import cont.LogoutController;
import cont.MyPageController;
import cont.OrderDetailController;
import cont.OrderInsertController;
import cont.OrderListController;
import cont.OrderSummaryController;
import cont.PaymentAddController;
import cont.PaymentController;
//import cont.PaymentDoController;
import cont.PaymentListController;
import cont.ProductDetailController;
import cont.QnaDeleteController;
import cont.QnaInsertController;
import cont.QnaListMenuController;
import cont.QnaReplyController;
import cont.SearchController;
import cont.UpdateController;
import cont.JoinController;
import dao.AddressDaoImple;
import dao.CartDaoImple;
import dao.MemberDaoImple;
import dao.OrderDaoImple;
import dao.PaymentDaoImple;
import dao.ProductDaoImple;
import dao.QnaDaoImple;
//import dao.ReviewDaoImple;

@Configuration // @Configuration이라고 하면 설정파일을 만들기 위한 애노테이션 or Bean을 등록하기 위한 애노테이션이다.
public class ContConfig implements WebMvcConfigurer {
// =====================================멤버관련 컨트롤러============================================	
	@Autowired
	private MemberDaoImple memberDao;
	@Autowired
	private ProductDaoImple productDao;
	@Autowired
	private CartDaoImple cartDao;
	@Autowired
	private OrderDaoImple orderDao;
	@Autowired
	private QnaDaoImple qnaDao;
	@Autowired
	private AddressDaoImple addressDao;
	@Autowired
	private PaymentDaoImple paymentDao;
	
	
	
	
	
	@Bean
	public LogInController loginController() { // 로그인 컨트롤러
		LogInController logInController = new LogInController();
		logInController.setMemberDao(memberDao,cartDao);
		return logInController;
	}

	@Bean
	public IndexController indexController() { // 메인화면 컨트롤러
		IndexController indexController = new IndexController();
//		indexController.setMemberDao(memberDao);
		return indexController;
	}

	@Bean
	public JoinController joinController() { // 회원가입 컨트롤러
		JoinController joinController = new JoinController();
		joinController.setMemberDao(memberDao);
		return joinController;
	}

	@Bean
	public LogoutController logoutController() { // 로그아웃 컨트롤러
		LogoutController logoutController = new LogoutController();
		return logoutController;
	}

	@Bean
	public UpdateController updateController() { // 업데이트 전체 리스트 컨트롤러
		UpdateController updateController = new UpdateController();
		return updateController;
	}
	@Bean
	public ChangeEmailController changeEmailController() { // 이메일 수정 컨트롤러 
		ChangeEmailController changeEmailController = new ChangeEmailController();
		changeEmailController.setMemberDao(memberDao);
		return changeEmailController;
	}
	@Bean
	public ChangePwdController changePwdController() {   // 비밀번호 수정 컨트롤러
		ChangePwdController changePwdController = new ChangePwdController();
		changePwdController.setMemberDao(memberDao);
		return changePwdController;
	}
	@Bean
	public DeleteController deleteController() {   // 회원 탈퇴 컨트롤러
		DeleteController deleteController = new DeleteController();
		deleteController.setMemberDao(memberDao);
		return deleteController;
	}
	@Bean
	public AddressController addressController() {  // 주소 회원록 컨트롤러
		AddressController addressController = new AddressController();
		addressController.setAddressDao(addressDao);
		return addressController;
	}
	@Bean
	public AddressAddController addressAddController() { // 주소추가 컨트롤러 
		AddressAddController addressAddController = new AddressAddController();
		addressAddController.setAddressDao(addressDao);
		return addressAddController;
	}
	@Bean
	public AddressDeleteController addressDeleteController() {   // 주소삭제 컨트롤러
		AddressDeleteController addressDeleteController = new AddressDeleteController();
		addressDeleteController.setAddressDao(addressDao);
		return addressDeleteController;
	}
	@Bean
	public FindEmailFormController findEmailFormController() {    // 이메일 찾기 폼 컨트롤러 
		FindEmailFormController findEmailFormController = new FindEmailFormController();
		findEmailFormController.setMemberDao(memberDao);
		return findEmailFormController;
	}
	@Bean
	public FindEmailController findEmailController() {   // 이메일 찾기 컨트롤러
		FindEmailController findEmailController = new FindEmailController();		
		return findEmailController;
	}
	@Bean
	public FindPwdFormController findPwdFormController() {   // 비밀번호 찾기 폼 컨트롤러
		FindPwdFormController findPwdFormController = new FindPwdFormController();
		findPwdFormController.setMemberDao(memberDao);
		return findPwdFormController;
	}
	@Bean
	public FindPwdController findPwdController() { // 비밀번호 찾기 컨트롤러 
		FindPwdController findPwdController = new FindPwdController();
		findPwdController.setMemberDao(memberDao);
		return findPwdController;
	}
	
	
	

// =====================================인덱스 컨트롤러============================================
	@Bean
	public MyPageController myPageController() { // 마이페이지 컨트롤러
		MyPageController myPageController = new MyPageController();
		myPageController.setMemberDao(memberDao);
		return myPageController;
	}

	@Bean
	public SearchController searchController() { // 검색페이지 컨트롤러
		SearchController searchController = new SearchController();
		searchController.setProductDao(productDao);
		return searchController;
	}

	@Bean
	public CategoryController categoryController() { // 카테고리 컨트롤러
		CategoryController categoryController = new CategoryController();
		categoryController.setProductDao(productDao);
		return categoryController;
	}
	@Bean
	public HelpMenuController helpMenuController() {  // 도움말 컨트롤러 
		HelpMenuController helpMenuController = new HelpMenuController();
		return helpMenuController;
	}
	@Bean
	public HelpMenuOrderController helpMenuOrderController() { // 배송 및 주문상태 메뉴 컨트롤러 
		HelpMenuOrderController helpMenuOrderController = new HelpMenuOrderController();
		return helpMenuOrderController;
	}
	
	@Bean
	public HelpMenuChangeController helpMenuChangeController() { // 교환 및 환불 메뉴 컨트롤러 
		HelpMenuChangeController helpMenuChangeController = new HelpMenuChangeController();
		return helpMenuChangeController;
	}
	
	@Bean
	public HelpMenuPaymentController helpMenuPaymentController() { // 결제 메뉴 컨트롤러
		HelpMenuPaymentController helpMenuPaymentController = new HelpMenuPaymentController();
		return helpMenuPaymentController;
	}
	
	@Bean
	public HelpMenuProductController helpProductController() { // 제품 메뉴 컨트롤러 
		HelpMenuProductController helpProductController = new HelpMenuProductController();
		return helpProductController;
	}
	
	@Bean
	public QnaInsertController qnaInsertController() { // 1:1 문의 컨트롤러 
		QnaInsertController qnaInsertController = new QnaInsertController();
		qnaInsertController.setQnaDao(qnaDao);
		return qnaInsertController;
	}
	
	@Bean
	public QnaListMenuController qnaListMenuController() { // 내 문의 내역 컨트롤러
		QnaListMenuController qnaListMenuController = new QnaListMenuController();
		qnaListMenuController.setQnaDao(qnaDao);
		return qnaListMenuController;
	}
	
	@Bean
	public QnaDeleteController qnaDeleteController() { // 문의 내역 삭제
		QnaDeleteController qnaDeleteController = new QnaDeleteController();
		qnaDeleteController.setQnaDao(qnaDao);
		return qnaDeleteController;
	}
	@Bean
	public QnaReplyController qnaReplyController() { // 답변 내용 확인
		QnaReplyController qnaReplyController = new QnaReplyController();
		qnaReplyController.setQnaDao(qnaDao);
		return qnaReplyController;
	}
	
	

// =============================상품상세페이지, 장바구니, 주문하기 컨트롤러===================================
	@Bean
	public ProductDetailController productDetailController() { // 상품상세정보 컨트롤러
		ProductDetailController productDetailController = new ProductDetailController();
		productDetailController.setProductDao(productDao);
		return productDetailController;
	}

	@Bean 
	public CartInsertController cartInsertController() { // 장바구니 담기 컨트롤러 + 장바구니 수정
	  CartInsertController cartInsertController = new CartInsertController();
	  cartInsertController.setCartDao(cartDao); 
	  return cartInsertController; 
	}
	  
   @Bean 
   public CartListController cartListController() { // 장바구니리스트 컨트롤러
	  CartListController cartListController = new CartListController(); 
	  cartListController.setCartDao(cartDao);
	  return cartListController; 
	}
   @Bean 	  
   public CartDeleteController cartDeletetController() { // 장바구니 삭제  컨트롤러
	   CartDeleteController cartDeletetController = new CartDeleteController(); 
	  cartDeletetController.setCartDao(cartDao);
	  return cartDeletetController; 
	}	  

   @Bean 
    public OrderInsertController orderInsertController() { // 주문하기 컨트롤러
	    OrderInsertController orderInsertController = new OrderInsertController();
	    orderInsertController.setOrderDao(orderDao); 
	    return orderInsertController;
    }
    
    @Bean 
    public OrderListController orderListController() { // 주문내역 리스트 컨트롤러
	    OrderListController orderListController = new OrderListController();
	    orderListController.setOrderDao(orderDao); 
	    return orderListController;
    }
    @Bean 
    public OrderDetailController orderDetailController() { // 주문내역 상세보기 컨트롤러
    	OrderDetailController orderDetailController = new OrderDetailController();
    	orderDetailController.setOrderDao(orderDao); 
    	return orderDetailController;
    }
    @Bean 
    public OrderSummaryController orderSummaryController() { // 주문하기 컨트롤러
    	OrderSummaryController orderSummaryController = new OrderSummaryController();
    	orderSummaryController.setOrderDao(orderDao); 
    	return orderSummaryController;
    }
	/*
	 * @Bean public ProductInsertController productInsertController() { // 상품등록 컨트롤러
	 * ProductInsertController productInsertController = new
	 * ProductInsertController(); return productInsertController; }
	 * 
	 * @Bean public ProductUpdateController productUpdateController() { // 상품수정 컨트롤러
	 * ProductUpdateController productUpdateController = new
	 * ProductUpdateController(); return productUpdateController; }
	 * 
	 * @Bean public ProductDeleteController productDeleteController() { // 상품삭제 컨트롤러
	 * ProductDeleteController productDeleteController = new
	 * ProductDeleteController(); return productDeleteController; } 
	 * 
	 * /
	 */
// =============================결제관련 컨트롤러===================================    
    @Bean 
    public PaymentController paymentController() { //결제방법 선택 컨트롤러
    	PaymentController paymentController = new PaymentController();
    	return paymentController;
    }
//    @Bean 
//    public PaymentDoController paymentDoController() { //결제정보 
//    	PaymentDoController paymentDoController = new PaymentDoController();
//    	return paymentDoController;
//    }
    @Bean 
    public PaymentAddController paymentAddController() { //결제수단 추가
    	PaymentAddController paymentAddController = new PaymentAddController();
    	paymentAddController.setPaymentDao(paymentDao);
    	return paymentAddController;
    }
    @Bean 
    public PaymentListController paymentListController() { //결제수단 추가
    	PaymentListController paymentListController = new PaymentListController();
    	return paymentListController;
    }
 // =============================관리자페이지 컨트롤러===================================
    @Bean
    public AdminMainController adminMainController() { // 관리자 페이지 메인화면 컨트롤러
    	AdminMainController adminMainController = new AdminMainController();
    	return adminMainController;
    }
    
    @Bean
    public AdminErrorController adminErrorController() { // 관리자 페이지 에러 컨트롤러 
    	AdminErrorController adminErrorController = new AdminErrorController();
    	return adminErrorController;
    }
    
    @Bean
    public AdminMemberListController adminMemberListController() { // 관리자 페이지 회원리스트 컨트롤러
    	AdminMemberListController adminMemberListController = new AdminMemberListController();
    	adminMemberListController.setMemberDao(memberDao);
    	return adminMemberListController;
    }
    
    @Bean
    public AdminMemberDeleteController adminMemberUpdateController() { // 관리자 페이지 회원탈퇴 컨트롤러
    	AdminMemberDeleteController adminMemberUpdateController = new AdminMemberDeleteController();
    	adminMemberUpdateController.setMemberDao(memberDao);
    	return adminMemberUpdateController;
    }
    
    @Bean
    public AdminQnaListController adminQnaListController() { // 관리자 페이지 1:1 문의 현황 컨트롤러
    	AdminQnaListController adminQnaListController = new AdminQnaListController();
    	adminQnaListController.setQnaDao(qnaDao);
    	return adminQnaListController;
    }
    
    @Bean
    public AdminQnaDeleteController adminQnaDeleteController() { // 관리자 페이지 문의 현황 삭제 컨트롤러
    	AdminQnaDeleteController adminQnaDeleteController = new AdminQnaDeleteController();
    	adminQnaDeleteController.setQnaDao(qnaDao);
    	return adminQnaDeleteController;
    }
    
    @Bean
    public AdminQnaReplyController adminQnaReplyController() { // 관리자 페이지 문의 답변 컨트롤러
    	AdminQnaReplyController adminQnaReplyController = new AdminQnaReplyController();
    	adminQnaReplyController.setQnaDao(qnaDao);
    	return adminQnaReplyController;
    }
    
    @Bean
    public AdminMyPageController adminMyPageController() {  // 관리자 페이지 마이페이지 컨트롤러
    	AdminMyPageController adminMyPageController = new AdminMyPageController();
    	return adminMyPageController;
    }
    
    @Bean
    public AdminReadOnlyController adminReadOnlyController() { // 관리자 페이지 필독사항 컨트롤러
    	AdminReadOnlyController adminReadOnlyController = new AdminReadOnlyController();
    	return adminReadOnlyController;
    }
}

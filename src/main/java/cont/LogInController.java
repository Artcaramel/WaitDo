package cont;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cont.LogInController;
import dao.CartDaoImple;
import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping("member/login")
public class LogInController {
	private MemberDaoImple memberDao;
	private CartDaoImple cartDao;
	public LogInController setMemberDao(MemberDaoImple memberDao, CartDaoImple cartDao) 
	{   this.cartDao = cartDao;
		this.memberDao = memberDao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form(MemberDto loginCommand,HttpSession session, Model model) {
		try {
			model.addAttribute("member",memberDao.exist(loginCommand.getEmail(), loginCommand.getPwd()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/WDLogin";
	}
//		if(session.getAttribute("authInfo") != null) {
//			if(((MemberDto) session.getAttribute("authInfo")).getEmail()!= loginCommand.getEmail()) {
//				return "main/Index";
//			}
//		} 
//		return "member/WDLogin";
	
	@RequestMapping(method = RequestMethod.POST)
		public String submit(
				MemberDto loginCommand, HttpSession session,
				HttpServletResponse response, Model model) {
		try {
			//loginCommand.setPwd(encrypt(loginCommand.getPwd()));
			MemberDto authInfo = memberDao.exist(
					loginCommand.getEmail(), 
					loginCommand.getPwd());
			if(authInfo == null) {
				model.addAttribute("message" , "이메일 또는 비밀번호가 알맞지 않습니다.");
				return "member/WDLogin";
			}else if(authInfo.getUseyn().equals("n")) {
				model.addAttribute("message" , "이미 삭제 요청된 계정입니다.");
				return "member/WDLogin";
			}
			
			session.setAttribute("authInfo", authInfo);
			session.setAttribute("CartCount", cartDao.cartCount(loginCommand.getEmail()) ); 
			return "redirect:/index";
//			return "main/Index";
		}catch(Exception e) { 
			e.printStackTrace();
			return "member/WDLogin";
		}
	}
    public String encrypt(String text) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(text.getBytes());

        return bytesToHex(md.digest());
    }

    private String bytesToHex(byte[] bytes) {
        StringBuilder builder = new StringBuilder();
        for (byte b : bytes) {
            builder.append(String.format("%02x", b));
        }
        return builder.toString();
    }

	
}

	
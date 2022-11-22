package cont;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
@RequestMapping("member/changeEmail")
public class ChangeEmailController {
	private MemberDaoImple memberDao;

	public ChangeEmailController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) {
		MemberDto memberdto = (MemberDto) session.getAttribute("authInfo");	
		try {		
			model.addAttribute("member", memberdto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/WDChangeEmail";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit(MemberDto memberdto,HttpSession session,HttpServletRequest request, HttpServletResponse response,Model model) {
		MemberDto memberdto1 = (MemberDto) session.getAttribute("authInfo");
		String pw = request.getParameter("pwd");
		try {
			if(!memberdto1.getPwd().equals(pw)) {
				model.addAttribute("member", memberdto1);
				model.addAttribute("error", "현재 비밀번호와 다릅니다");
				return "member/WDChangeEmail";
			}else {
			
//			memberdto.setPwd(encrypt(memberdto.getPwd()));
			memberdto.setMno(memberdto1.getMno());
//			System.out.println(memberdto1.getMno());
//			System.out.println(memberdto.getMno());	
			memberDao.updateEmail(memberdto);
			session.invalidate();
			return "member/WDLogin";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
//    public String encrypt(String text) throws NoSuchAlgorithmException {
//        MessageDigest md = MessageDigest.getInstance("SHA-256");
//        md.update(text.getBytes());
//
//        return bytesToHex(md.digest());
//    }
//
//    private String bytesToHex(byte[] bytes) {
//        StringBuilder builder = new StringBuilder();
//        for (byte b : bytes) {
//            builder.append(String.format("%02x", b));
//        }
//        return builder.toString();
//    }

}

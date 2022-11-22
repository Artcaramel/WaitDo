package cont;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDaoImple;
import dto.MemberDto;

@Controller
public class JoinController {
	private MemberDaoImple memberDao;
	public JoinController setMemberDao(MemberDaoImple memberDao) {
		this.memberDao = memberDao;
		return this;
	}
//	@RequestMapping("member/join")
//	public String join() throws Exception {
//		return "member/WDJoin";
//	}
//}
	
	@RequestMapping("member/joinForm")	
	public String form(MemberDto loginCommand, Model model) throws Exception {
		if(loginCommand.getName() == null) {
			return "member/WDJoin";
		}else {
			model.addAttribute("member", loginCommand);                  // 이메일 중복처리 실패한 코드
			return "member/WDJoin";
		}				
//		return "member/WDJoin";
	}

	@PostMapping("member/join")
	public String submit(MemberDto memberdto, Model model) {
		try {
			MemberDto checkEmail = memberDao.idcheck(memberdto.getEmail());
			if(checkEmail != null) {
				model.addAttribute("member", memberdto);
				model.addAttribute("existEmail", "이미 존재하는 이메일입니다");
				return "member/WDJoin";
			}else {
//				String[] choiceArr = request.getParameterValues("checkAll");
//		         for(String cseq : choiceArr) {
//		            MemberDaoImple memberDao = MemberDaoImple.getInstance();
//		         }
//				memberdto.setPwd(encrypt(memberdto.getPwd()));
				memberDao.insert(memberdto);
//				System.out.println("!!!!!!!"+memberdto.getEmail());
				return "redirect:/member/login";
			}
		}catch(Exception e) {
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


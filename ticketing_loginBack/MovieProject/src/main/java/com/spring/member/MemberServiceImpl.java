package com.spring.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.MemberVO.level;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service("memberService")
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSession sqlSession;
	
	@Setter(onMethod_ = {@Autowired})
	private MemberDAO memberDAOglobal;
	
	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	/**
	 * 濡쒓렇�씤 �떆 �쉶�썝 泥댄겕
	 * @param email - �엯�젰�븳 email
	 * @param pw - �엯�젰�븳 password
	 * @return �쉶�썝 �뿬遺� 寃곌낵
	 */
	@Override
	public int userCheck(String email, String pw) {
		int x = -1;
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		MemberVO vo = memberDAO.userCheck(email);
		
		if(vo != null) {
			if(pw.equals(vo.getM_password()))
				x = 1; 
			else
				x = -1; 
		}else 
			x = 0; 
		return x;
	}

	@Override
	public MemberVO getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteMember(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public String findEmail(MemberVO vo) {
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		String email = memberDAO.findEmail(vo);
		
		if(email != null) { 
			return email;
		}
		else
			return  "fail";
					
	}

	@Override
	public MemberVO findPw(MemberVO vo) {
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		MemberVO memberVO = memberDAO.findPw(vo);
		if(memberVO == null) {
			return null;
		}else {
			return memberVO;
		}
	}


	@Override
	public void memberJoin(MemberVO vo) {
		vo.setM_image("");
		vo.setM_cert("N");
		vo.setM_deleteyn("N");
		vo.setM_following(0);
		vo.setM_follower(0);
		vo.setM_level(level.BRONZE);
		vo.setM_blacklist("N");
		
		
		memberDAOglobal.memberJoin(vo);
		}


	@Override
	public boolean emailOverlapChk(MemberVO vo) {
		if (memberDAOglobal.emailOverlapChk(vo.getM_email()) == 0) {
			System.out.println("no overlaped email");
			return true;
		} else {
			System.out.println("overlaped email exsist");
			return false;
			
		}
	}


	@Override
	public boolean nickOverlapChk(MemberVO vo) {
		
		if (memberDAOglobal.nickOverlapChk(vo.getM_nickname()) == 0) {
			System.out.println("no overlaped nikcname");
			return true;
		} else {
			System.out.println("overlaped nickname exsist");
			return false;
			
		}
	}
	
	
	
	

}

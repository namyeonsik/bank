package com.bank.web.serviceImpl;

import java.util.HashMap;
import java.util.Map;

import com.bank.web.domain.MemberBean;
import com.bank.web.service.MemberService;


public class MemberServiceImpl implements MemberService{
	// 필드
	private MemberBean member;
	private MemberBean[] memberList;
	private Map<String, MemberBean> map;	// Map은 인터페이스
	
	public MemberServiceImpl(){
		member = new MemberBean();
		map = new HashMap<String, MemberBean>();
	}

	public MemberBean[] getMemberList() {
		return memberList;
	}

	public void setMemberList(MemberBean[] memberList) {
		this.memberList = memberList;
	}

	@Override
	public String login(String id, String password) {
		// 로그인
		String result = "로그인 실패";
		// 메소드 체인 기법
		if(map.containsKey(id)){	// 맵에 id가 존재하는지를 먼저 체크한다
			result = ( map.get(id).getPassword().equals(password))? "로그인 성공":"비밀번호가 일치하지 않습니다.";
		} else {
			result = "아이디가 존재하지 않거나, 잘못된 아이디 입니다.";
		}
		return result;
	}

	@Override
	public String update(MemberBean member) {
		// 정보수정
		map.replace(member.getUserid(), member);
		return "업데이트 성공";
	}
	
	@Override
	public String join(MemberBean member) {
		// 회원가입
		map.put(member.getUserid(), member);
		return member.getName() + "회원 가입을 축하드립니다.";
	}

	@Override
	public MemberBean searchById(String id) {
		// 아이디로 회원정보 검색
		return  map.get(id);
	}

	@Override
	public MemberBean[] searchByName(String name) {
		// 이름으로 회원정보 검색
		MemberBean[] tempList = new MemberBean[this.searchCountByName(name)];
		int j = 0;

		for (int i = 0; i < map.size(); i++) {
			if (map.get(i).getName().equals(name)) {
				tempList[j] = map.get(i);
				j++;
			}
		}
		return tempList;
	}

	@Override
	public String remove(String userid) {
		// 회원 탈퇴
		
		/*MemberBean tempMember = null;
		String result = "";
		
		if(this.searchById(userid) != null){
			for (int i = 0; i < this.getCount(); i++) {				
				if (memberList[i].getUserid().equals(userid)) {
					tempMember = memberList[i];
					memberList[i] = memberList[this.getCount()-1];
					memberList[this.getCount()-1] = null;
				}			
			}	
			this.setCount(this.getCount()-1);
			result = tempMember.getUserid() + "삭제 성공";
		}else
			result = "해당 아이디가 없음";
			
		return result;*/

		return (map.remove(userid) != null)? "탈퇴 성공":"탈퇴 실패";
	}

	@Override
	public int countAll() {
		// 전체 회원 수 조회
		return map.size();
	}

	@Override
	public int searchCountByName(String name) {
		// 이름으로 가입된 아이디 검색
		int tempCount = 0;

		for (int i = 0; i < map.size(); i++) {
			if (memberList[i].getName().equals(name)) {
				tempCount++;
			}
		}

		return tempCount;
	}

}

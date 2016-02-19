package com.bank.web.service;

import com.bank.web.domain.MemberBean;

public interface MemberService {

	public String join(MemberBean member);
	public MemberBean searchById(String id);
	public MemberBean[] searchByName(String name);
	public String remove(String userid);
	public int countAll();
	public int searchCountByName(String name);
	public String login(String id, String password);
	public String update(MemberBean member);
}

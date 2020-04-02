package com.kh.ot.member.vo;

import org.springframework.stereotype.Component;

@Component
public class Member {

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memSsn;
	private String memAddress;
	private String memEmail;
	private String memPhone;
	private int memSumMoney;
	
	public Member() {
		super();
	}

	public Member(int memNo, String memId, String memPwd, String memName, String memSsn, String memAddress,
			String memEmail, String memPhone, int memSumMoney) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memSsn = memSsn;
		this.memAddress = memAddress;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.memSumMoney = memSumMoney;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemSsn() {
		return memSsn;
	}

	public void setMemSsn(String memSsn) {
		this.memSsn = memSsn;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public int getMemSumMoney() {
		return memSumMoney;
	}

	public void setMemSumMoney(int memSumMoney) {
		this.memSumMoney = memSumMoney;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memSsn=" + memSsn + ", memAddress=" + memAddress + ", memEmail=" + memEmail + ", memPhone="
				+ memPhone + ", memSumMoney=" + memSumMoney + "]";
	}
	
	
	
	
}

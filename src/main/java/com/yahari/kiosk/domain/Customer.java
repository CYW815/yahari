package com.yahari.kiosk.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Customer {
	private long cid;
	private String name;
	private String phone;
	private String passwd;
	private double balance;
	private double point;
	private Date regDate;
}

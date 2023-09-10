package com.yahari.kiosk.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Admin {
	private long aid;
	private String adminPasswd;
	private String adminAccountNum;
	private double adminBalance;
	private Date regDate;
}

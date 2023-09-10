package com.yahari.kiosk.command;



import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CustomerCommand {
	private String name;
	private String phone;
	private String phone1;
	private String phone2;
	private String phone3;
	private String passwd;
	private double balance;
	private double point;
	private String select;
	private String listAll;
	private String date;
}

package com.yahari.kiosk.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PayCommand {
	private String payType;
	private double point;
	private double balance;
	private double usePoint;
	private String receiptType;
}

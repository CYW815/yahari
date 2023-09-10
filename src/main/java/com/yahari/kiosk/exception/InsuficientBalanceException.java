package com.yahari.kiosk.exception;

public class InsuficientBalanceException extends Exception{
	private static final long serialVersionUID = 1L;
	public InsuficientBalanceException(String msg) {
		super(msg);
	}

}

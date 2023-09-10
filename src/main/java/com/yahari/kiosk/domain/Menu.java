package com.yahari.kiosk.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class Menu {
	protected long mid;
	protected String name;
	protected double price;
	protected char menuType;
	protected String imageName;
}

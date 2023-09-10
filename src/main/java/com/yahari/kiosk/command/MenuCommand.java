package com.yahari.kiosk.command;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MenuCommand {
	private String name;
	private double price;
	private String imageName;
	private char menuType;
	private List<String> menuName;
	private List<Integer> menuCount;
}

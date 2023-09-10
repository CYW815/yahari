package com.yahari.kiosk.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.yahari.kiosk.domain.Menu;
import com.yahari.kiosk.domain.MenuDrink;
import com.yahari.kiosk.domain.MenuRamen;
import com.yahari.kiosk.domain.MenuSide;
import com.yahari.kiosk.domain.MenuTopping;

public class MenuRowMapper implements RowMapper<Menu>{

	@Override
	public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		Menu menu = null;
		if(rs.getString("menuType").equals("R")) {
			menu = new MenuRamen();
		} else if(rs.getString("menuType").equals("S")) {
			menu = new MenuSide();
		} else if(rs.getString("menuType").equals("D")) {
			menu = new MenuDrink();
		} else if(rs.getString("menuType").equals("T")) {
			menu = new MenuTopping();
		}
		menu.setMid(rs.getLong("mid"));
		menu.setName(rs.getString("name"));
		menu.setPrice(rs.getDouble("price"));
		menu.setMenuType(rs.getString("menuType").charAt(0));
		menu.setImageName(rs.getString("imageName"));
		return menu;
	}

}

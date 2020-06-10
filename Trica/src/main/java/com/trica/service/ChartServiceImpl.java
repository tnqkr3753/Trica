package com.trica.service;

import java.awt.Color;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trica.dao.ChartDAO;
@Service("chartService")
public class ChartServiceImpl implements ChartService {
	@Autowired
	ChartDAO chartDAO;
	@Override
	public JSONArray getChartCPD() {
		//리스트 받아오기
		List<HashMap> items = chartDAO.getCountPerDay();
		//리턴할 json
		JSONArray data = new JSONArray();
		JSONArray title = new JSONArray();
		title.add("Elememt");
		title.add("주문건수");
		JSONObject style= new JSONObject();
		style.put("role","style");
		title.add(style);
		data.add(title);
		for (HashMap hash : items) {
			Random rand = new Random();
			float r = rand.nextFloat();
			float g = rand.nextFloat();
			float b = rand.nextFloat();
			Color color = new Color(r, g, b);
			JSONArray row = new JSONArray();
			row.add(hash.get("DAY"));
			row.add(hash.get("COUNT"));
			row.add("#"+Integer.toHexString( color.getRGB() & 0x00ffffff ));
			data.add(row);
		}
		
		return data;
	}

	@Override
	public JSONArray getChartCPC() {
		List<HashMap> items = chartDAO.getCountPerCate();
		JSONArray data = new JSONArray();
		JSONArray title = new JSONArray();
		title.add("Elememt");
		title.add("조회수");
		JSONObject style= new JSONObject();
		style.put("role","style");
		title.add(style);
		data.add(title);
		for (HashMap hash : items) {
			Random rand = new Random();
			float r = rand.nextFloat();
			float g = rand.nextFloat();
			float b = rand.nextFloat();
			Color color = new Color(r, g, b);
			JSONArray row = new JSONArray();
			row.add(hash.get("CATEGORY"));
			row.add(hash.get("VIEWCOUNT"));
			row.add("#"+Integer.toHexString( color.getRGB() & 0x00ffffff ));
			data.add(row);
		}
		
		return data;
	}

	@Override
	public JSONArray getChartSPD() {
		List<HashMap> items = chartDAO.getSalesPerDay();
		JSONArray data = new JSONArray();
		JSONArray title = new JSONArray();
		title.add("Elememt");
		title.add("매출");
		JSONObject style= new JSONObject();
		style.put("role","style");
		title.add(style);
		data.add(title);
		for (HashMap hash : items) {
			Random rand = new Random();
			float r = rand.nextFloat();
			float g = rand.nextFloat();
			float b = rand.nextFloat();
			Color color = new Color(r, g, b);
			JSONArray row = new JSONArray();
			row.add(hash.get("DAY"));
			row.add(hash.get("SALES"));
			row.add("#"+Integer.toHexString( color.getRGB() & 0x00ffffff ));
			data.add(row);
		}
		
		return data;
	}


}

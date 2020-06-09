package com.trica.app;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.trica.service.ChartService;

@RestController

public class ChartController {
	@Autowired
	ChartService chartService;
	@RequestMapping("/chart.trc")
	public ModelAndView chartPage() {
		return new ModelAndView("chart/chart");
	}
	@ResponseBody
	@RequestMapping("/chart/getDatechart.trc")
	public JSONArray getChartCPDData() {
		return chartService.getChartCPD();
	}
	@ResponseBody
	@RequestMapping("/chart/getCatechart.trc")
	public JSONArray getChartCPCData() {
		return chartService.getChartCPC();
	}
	@ResponseBody
	@RequestMapping("/chart/getSaleschart.trc")
	public JSONArray getChartSPDData() {
		return chartService.getChartSPD();
	}
}

package com.hintguys.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.hintguys.form.AirlineContents;
import com.hintguys.form.HomeContents;
import com.hintguys.service.impl.AirlineServiceImpl;
import com.hintguys.service.impl.PageServiceImpl;

@Controller
public class FlightController {

	@Autowired
	public PageServiceImpl pageServiceImpl;

	@Autowired
	public AirlineServiceImpl airlineContentsRepository;

	@GetMapping("/flights")
	public String flights(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		List<AirlineContents> airlineContents =new ArrayList<AirlineContents>();
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("").get(0);
			airlineContents = airlineContentsRepository.FindAllAirlinesContents("Active", "airline");
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("blogData", airlineContents);
		model.addAttribute("homeDetails", homeDetails);
		return "flights/index";
	}

	@GetMapping("/flights/{airlineName}")
	public String flightsInner(@PathVariable("airlineName") String airlineName, HttpServletRequest request, Model model) {
		request.getSession().setAttribute("langCode", "EN");
		List<AirlineContents> airlineContents = new ArrayList<AirlineContents>();
		List<AirlineContents> recentAirline = new ArrayList<AirlineContents>();
		HomeContents homeDetails = new HomeContents();
		try {
			homeDetails = pageServiceImpl.findHomeContentDetails("").get(0);
			airlineContents = airlineContentsRepository.findByStatusAndUrl("Active", airlineName, "airline");
			recentAirline = airlineContentsRepository.findRecentAirlineContent("Active", "airline");
			if(airlineContents.size() == 0) {
				return "404-error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("homeDetails", homeDetails);
		model.addAttribute("blogTitleData", airlineContents);
		model.addAttribute("recentAirline", recentAirline);
		return "flights/innerPages";
	}
}

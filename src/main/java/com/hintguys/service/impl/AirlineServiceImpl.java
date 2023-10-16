package com.hintguys.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hintguys.entity.AirlineContent;
import com.hintguys.form.AirlineContents;
import com.hintguys.repository.AirlineContentsRepository;
import com.hintguys.service.AirlineService;

@Service
public class AirlineServiceImpl implements AirlineService{

	@Autowired
	AirlineContentsRepository airlineContentsRepository;
 
	@Autowired
	private ModelMapper modelMapper;

	 
	public List<AirlineContents> findByStatusAndUrl(String status, String url,String pageType) {
		List<AirlineContent> airlines = airlineContentsRepository.findByStatusAndUrlAndPageType(status,url,pageType);
		ArrayList<AirlineContents> arrayList = new ArrayList<AirlineContents>();
		if (!airlines.isEmpty()) {
			for (AirlineContent content : airlines) {
				arrayList.add(modelMapper.map(content, AirlineContents.class));
			}
		}
		return arrayList;
	}
	public List<AirlineContents> findRecentAirlineContent(String status,String pageType) {
		return airlineContentsRepository.findTo10ByStatusAndPageType(status,pageType).stream().map(airlineContent -> this.modelMapper.map(airlineContent, AirlineContents.class)).collect(Collectors.toList());
	}
	public List<AirlineContents> FindAllAirlinesContents(String status,String pageType) {
		return airlineContentsRepository.findByStatusAndPageType(status,pageType).stream().map(airlineContent -> this.modelMapper.map(airlineContent, AirlineContents.class)).collect(Collectors.toList());
	}

}

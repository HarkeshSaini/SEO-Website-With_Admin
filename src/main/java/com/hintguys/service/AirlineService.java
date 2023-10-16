package com.hintguys.service;

import java.util.List;

import com.hintguys.form.AirlineContents;

public interface AirlineService {

	public List<AirlineContents> findRecentAirlineContent(String status, String pageType);

	public List<AirlineContents> FindAllAirlinesContents(String status, String pageType);

	public List<AirlineContents> findByStatusAndUrl(String status, String url, String pageType);

}

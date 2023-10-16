package com.hintguys.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiteMapController {

	@RequestMapping({ "/sitemap.xml" })
	public void sitemap(final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		final ServletContext context = request.getSession().getServletContext();
		final String appPath = context.getRealPath("/");
		final String filePath = "sitemap.xml";
		final File downloadFile = new File(String.valueOf(appPath) + filePath);
		final FileInputStream inputStream = new FileInputStream(downloadFile);
		String mimeType = context.getMimeType(String.valueOf(appPath) + filePath);
		if (mimeType == null) {
			mimeType = "application/xml";
		}
		response.setContentType("application/xml");
		final OutputStream outStream = (OutputStream) response.getOutputStream();
		final byte[] buffer = new byte[20000];
		int bytesRead = -1;
		while ((bytesRead = inputStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}
		inputStream.close();
		outStream.close();
	}

	@RequestMapping({ "/robots.txt" })
	public void robots(final HttpServletRequest request, final HttpServletResponse response) throws IOException {
		final ServletContext context = request.getSession().getServletContext();
		final String appPath = context.getRealPath("/");
		final String filePath = "/robots.txt";
		final String fullPath = String.valueOf(appPath) + filePath;
		final File downloadFile = new File(fullPath);
		final FileInputStream inputStream = new FileInputStream(downloadFile);
		String mimeType = context.getMimeType(fullPath);
		if (mimeType == null) {
			mimeType = "text/plain";
		}
		response.setContentType("text/plain");
		final OutputStream outStream = (OutputStream) response.getOutputStream();
		final byte[] buffer = new byte[20000];
		int bytesRead = -1;
		while ((bytesRead = inputStream.read(buffer)) != -1) {
			outStream.write(buffer, 0, bytesRead);
		}
		inputStream.close();
		outStream.close();
	}

}

package com.hintguys.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorsController implements ErrorController {

	private ErrorAttributes errorAttributes;

	private final static String ERROR_PATH = "${server.error.path:${error.path:/error}}";

	public ErrorsController(ErrorAttributes errorAttributes) {
		this.errorAttributes = errorAttributes;
	}

	@RequestMapping(value = ERROR_PATH, produces = "text/html")
	public ModelAndView errorHtml(HttpServletRequest request, WebRequest webRequest) {
		return new ModelAndView("redirect:/errorCode", getErrorAttributes(request, false, webRequest));
	}

	@RequestMapping(value = "/errorCode", method = RequestMethod.GET)
	public ModelAndView errorCode(HttpServletRequest request) {
		ModelAndView andView = new ModelAndView();
		andView.setViewName("redirect:/");
		return andView;
	}

	@RequestMapping(value = ERROR_PATH)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> error(HttpServletRequest request, WebRequest webRequest) {
		Map<String, Object> body = getErrorAttributes(request, getTraceParameter(request), webRequest);
		HttpStatus status = getStatus(request);
		return new ResponseEntity<Map<String, Object>>(body, status);
	}

	@Override
	public String getErrorPath() {
		return ERROR_PATH;
	}

	private boolean getTraceParameter(HttpServletRequest request) {
		String parameter = request.getParameter("trace");
		if (parameter == null) {
			return false;
		}
		return !"false".equals(parameter.toLowerCase());
	}

	private Map<String, Object> getErrorAttributes(HttpServletRequest request, boolean includeStackTrace,
			WebRequest webRequest) {
		return this.errorAttributes.getErrorAttributes(webRequest, includeStackTrace);
	}

	private HttpStatus getStatus(HttpServletRequest request) {
		Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
		if (statusCode != null) {
			try {
				return HttpStatus.valueOf(statusCode);
			} catch (Exception ex) {
			}
		}
		return HttpStatus.INTERNAL_SERVER_ERROR;
	}
}
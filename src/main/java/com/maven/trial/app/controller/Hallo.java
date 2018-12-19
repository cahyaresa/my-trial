package com.maven.trial.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SuppressWarnings("unused")
@Controller
public class Hallo {

	@ResponseBody
	@RequestMapping("/hallo")
	public String index(){
		return "hallo world Spring Controller";
	} 
}
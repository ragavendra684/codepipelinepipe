package com.example.Codepipelinepipe.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/test")
	public String getResult() {
		return "Hello Pipeline i got you";
	}
}

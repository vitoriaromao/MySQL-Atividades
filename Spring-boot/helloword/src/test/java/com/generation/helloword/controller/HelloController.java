package com.generation.helloword.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

	@GetMapping
	public String hello () {
		return "Hello Família 41!";
	}
	
	
	@GetMapping
	public String hab () {
		return "As mentalidades que usei foram: Responsabilidade pessoal e"
				+ " persistência. As habilidades foram:Atenção aos detalhes e comuniação";
	}
		
		@GetMapping
		public String obj () {
			return "Meu objetivo essa semana é concluir a semana bem e entendendo a matéria" ;

						
		
	
		
	}
}

package com.keeonline.chameleon.api.v1.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.keeonline.chameleon.api.v1.model.GreetingsDto;

@RestController("GreetingsV1")
@RequestMapping("/v1/greetings")
public class GreetingsController {

    @Value("${spring.application.name}")
    private String serviceName;

    @GetMapping(path = "")
    public ResponseEntity<GreetingsDto> get() {
        GreetingsDto dto = new GreetingsDto(serviceName);

        return ResponseEntity.ok().body(dto);
    }
    
}

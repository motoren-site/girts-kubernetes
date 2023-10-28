package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloContainer {
  @GetMapping
  public String hello() {
    return "Hello, Kubernetes!";
  }
}

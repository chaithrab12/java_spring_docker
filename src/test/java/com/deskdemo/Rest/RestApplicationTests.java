package com.deskdemo.Rest;

import org.junit.jupiter.api.Test;

import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest
class DemoApplicationTests {

    @Test
    void contextLoads() {
        assertThat(true).isTrue();  // Simple sanity test
    }
}
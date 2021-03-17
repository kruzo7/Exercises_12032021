package com.Exercises_12032021.Task2.Services;

import java.time.LocalDateTime;

public class CustomRandomService {
    public Integer generateRandomNumber() {
        LocalDateTime ldt = LocalDateTime.now();
        return ldt.getNano();
    }
}

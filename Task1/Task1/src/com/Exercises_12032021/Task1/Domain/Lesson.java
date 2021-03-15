package com.Exercises_12032021.Task1.Domain;

import java.time.LocalTime;

public class Lesson {

    public Integer lessonNumber;
    public LocalTime startTime;
    public LocalTime endTime;
    public Boolean added;

    public Lesson(Integer lessonNumber, LocalTime startTime, LocalTime endTime) {
        this.lessonNumber = lessonNumber;
        this.startTime = startTime;
        this.endTime = endTime;
        added = false;
    }
}

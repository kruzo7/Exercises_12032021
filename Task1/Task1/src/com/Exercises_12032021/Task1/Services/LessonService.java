package com.Exercises_12032021.Task1.Services;

import com.Exercises_12032021.Task1.Domain.Lesson;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class LessonService {

    public List<Lesson> prepareLessons() {
        List<Lesson> lessons = new ArrayList<>();
        lessons.add(new Lesson(1, LocalTime.of(8, 0), LocalTime.of(10, 0)));
        lessons.add(new Lesson(2, LocalTime.of(8, 0), LocalTime.of(11, 0)));
        lessons.add(new Lesson(3, LocalTime.of(9, 0), LocalTime.of(11, 0)));
        lessons.add(new Lesson(4, LocalTime.of(9, 0), LocalTime.of(11, 0)));
        lessons.add(new Lesson(5, LocalTime.of(12, 0), LocalTime.of(14, 0)));
        lessons.add(new Lesson(6, LocalTime.of(12, 0), LocalTime.of(13, 0)));
        lessons.add(new Lesson(7, LocalTime.of(11, 0), LocalTime.of(13, 0)));
        lessons.add(new Lesson(8, LocalTime.of(8, 0), LocalTime.of(11, 0)));
        lessons.add(new Lesson(9, LocalTime.of(12, 0), LocalTime.of(13, 0)));
        return lessons;
    }

}

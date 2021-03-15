package com.Exercises_12032021.Task1.Domain;

import java.util.ArrayList;
import java.util.List;

public class BuildingRoom {

    public List<Lesson> lessons;

    public BuildingRoom() {
        this.lessons = new ArrayList<>();
    }

    public Boolean checkAndAdd(Lesson lesson) {
        Boolean added = lesson.added;

        if (this.lessons.isEmpty()) {
            this.lessons.add(lesson);
            added = true;
        }

        if (added.equals(false)) {
            for (Lesson l : this.lessons) {
                if (l.lessonNumber.equals(lesson.lessonNumber)) {
                    added = true;
                }
            }
        }

        if (added.equals(false)) {
            boolean isRoomTimeFree = false;

            for (Lesson l : this.lessons) {
                if (lesson.startTime.isAfter(l.endTime)) {
                    isRoomTimeFree = true;
                } else {
                    isRoomTimeFree = false;
                }
            }

            if (isRoomTimeFree) {
                this.lessons.add(lesson);
                added = true;
            }
        }

        return added;
    }
}

package com.Exercises_12032021.Task1.Domain;

import java.util.ArrayList;
import java.util.List;

public class Building {

    public List<BuildingRoom> rooms;
    public List<Lesson> lessons;

    public Building(List<Lesson> lessons) {
        this.rooms = new ArrayList<>();
        this.lessons = lessons;
    }

    public void prepareRooms() {

        if (this.rooms.isEmpty()) {
            this.rooms.add(new BuildingRoom());
        }

        for (Lesson l : this.lessons) {
            assignLessonInBuildingRoom(l);
        }
        ;
    }

    private void assignLessonInBuildingRoom(Lesson lesson) {
        Boolean added = false;

        for (BuildingRoom room : this.rooms) {
            if (room.checkAndAdd(lesson).equals(true)) {
                added = true;
                lesson.added = added;
            }
        }

        if (added.equals(false)) {
            BuildingRoom br = new BuildingRoom();
            br.lessons.add(lesson);
            this.rooms.add(br);
            added = true;
            lesson.added = added;
        }
    }
}

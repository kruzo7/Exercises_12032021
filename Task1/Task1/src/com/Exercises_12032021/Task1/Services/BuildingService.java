package com.Exercises_12032021.Task1.Services;

import com.Exercises_12032021.Task1.Domain.Building;

public class BuildingService {

    private Building building;

    public BuildingService() {
        this.building = new Building(new LessonService().prepareLessons());
    }

    public void prepareBuildingRooms() {
        building.prepareRooms();
    }

    public String showBuildingRooms() {
        Integer assignedRooms = building.rooms.size();
        return "Number of rooms that were assigned: " + assignedRooms.toString();
    }
}

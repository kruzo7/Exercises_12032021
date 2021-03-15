package com.Exercises_12032021.Task1;

import com.Exercises_12032021.Task1.Services.BuildingService;

public class TaskMain {

    public static void main(String[] args) {
        BuildingService buildingService = new BuildingService();
        buildingService.prepareBuildingRooms();

        System.out.println(buildingService.showBuildingRooms());
    }
}

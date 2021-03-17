package com.Exercises_12032021.Task2.Services;

import com.Exercises_12032021.Task2.Domain.PerfectNumber;

import java.util.ArrayList;
import java.util.List;

public class PerfectNumberService {

    private CustomRandomService customRandomService;
    private List<Integer> seriesOfNumbersToProceed;
    private List<PerfectNumber> perfectNumbers;
    private float percentOfPn;

    public PerfectNumberService() {
        this.customRandomService = new CustomRandomService();
        this.seriesOfNumbersToProceed = new ArrayList<>();
        this.percentOfPn = 0;
        this.perfectNumbers = new ArrayList<>();
    }

    public void start() {
        startMessage();
        this.seriesOfNumbersToProceed = this.customRandomService.generateRandomNumbersSeries();
        startInfoMessage();
        generatingInfoMessage();

        checkForPerfectNumbers();
        calculatePercent();

        summaryInfoMessage();
    }

    private void checkForPerfectNumbers() {
        for(Integer i : this.seriesOfNumbersToProceed) {
            PerfectNumber pn = new PerfectNumber(i);
            if(pn.isPerfect()) {
                this.perfectNumbers.add(pn);
            }
        }
    }

    private void calculatePercent() {
        int totalPn = this.perfectNumbers.size();
        if (totalPn > 0 & this.seriesOfNumbersToProceed.size() > 0) {
            this.percentOfPn = ((float)totalPn * 100) / this.seriesOfNumbersToProceed.size();
        }
    }

    private void startMessage() {
        System.out.println("Starting perfect number calculator.");
    }

    private void startInfoMessage() {
        System.out.println("Total numbers to proceed: " + seriesOfNumbersToProceed.toString());
    }

    private void generatingInfoMessage() {
        System.out.println("Generating...");
    }

    private void summaryInfoMessage() {
        String summaryMessage = """
                There are (%d) perfect numbers and they are (%.2f %%) of total numbers.                   
                """;
        System.out.println(String.format(summaryMessage, this.perfectNumbers.size(), this.percentOfPn));
    }

}

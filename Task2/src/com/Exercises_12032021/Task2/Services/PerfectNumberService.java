package com.Exercises_12032021.Task2.Services;

import com.Exercises_12032021.Task2.Domain.PerfectNumber;

import java.util.ArrayList;
import java.util.List;

public class PerfectNumberService {

    private CustomRandomService customRandomService;
    private Integer numberToProcced;
    private List<PerfectNumber> perfectNumbers;
    private float percentOfPn;

    public PerfectNumberService() {
        this.customRandomService = new CustomRandomService();
        this.numberToProcced = 0;
        this.percentOfPn = 0;
        this.perfectNumbers = new ArrayList<>();
    }

    public void start() {
        startMessage();
        this.numberToProcced = this.customRandomService.generateRandomNumber();
        startInfoMessage();
        generatingInfoMessage();

        checkForPerfectNumbers();
        calculatePercent();

        summaryInfoMessage();
    }

    private void checkForPerfectNumbers() {
        for(int i=1; i <= this.numberToProcced; i++) {
            PerfectNumber pn = new PerfectNumber(i);
            if(pn.isPerfect()) {
                this.perfectNumbers.add(pn);
            }
        }
    }

    private void calculatePercent() {
        int totalPn = this.perfectNumbers.size();
        if (totalPn > 0 & this.numberToProcced > 0) {
            this.percentOfPn = ((float)totalPn * 100) / this.numberToProcced;
        }
    }

    private void startMessage() {
        System.out.println("Starting perfect number calculator.");
    }

    private void startInfoMessage() {
        System.out.println("Total numbers to proceed: " + numberToProcced.toString());
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

package com.Exercises_12032021.Task2.Domain;

public class PerfectNumber {

    private Integer number;

    public PerfectNumber(Integer number) {
        this.number = number;
    }

    public Boolean isPerfect() {
        boolean isPerfect = false;
        int sum = 0;

        for (int i = 1; i < this.number; i++) {
            if (this.number % i == 0) {
                sum = sum + i;
            }
        }

        if (sum == this.number) {
            isPerfect = true;
        }

        return isPerfect;
    }

}

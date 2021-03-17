package com.Exercises_12032021.Task2.Services;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class CustomRandomService {

    private final int seriesSize = 100;

    public List<Integer> generateRandomNumbersSeries() {
        List<Integer> randoms = new ArrayList<>();

        randoms = linearRandomGenerator(LocalDateTime.now().getSecond(), 2, 999, 999, this.seriesSize);

        return randoms;
    }

    /*
    m > 0 (the modulus is positive),
    0 < a < m (the multiplier is positive but less than the modulus),
    0 ≤ b < m (the increment is non negative but less than the modulus), and
    0 ≤ X0 < m (the seed is non negative but less than the modulus).
    x0=seed; a=multiplier; b=increment; m=modulus; n=desired array length;  */
	private List<Integer> linearRandomGenerator(int x0, int a, int b, int m, int n) {
        List<Integer> randoms = new ArrayList<>();

        for (int i = 0; i < n; i++) {
            x0 = (a * x0 + b) % m;
            randoms.add(x0);
        }

        return randoms;
    }
}

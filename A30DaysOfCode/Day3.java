package A30DaysOfCode;

import java.util.Scanner;

public class Day3 {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        int num = Integer.parseInt(scan.nextLine());

        if ((num % 2 == 1) || ((num % 2 == 0) && (num >= 6 && num <= 20))) {
            System.out.println("Weird");
        } else {
            System.out.println("Not Weird");
        }

    }
}
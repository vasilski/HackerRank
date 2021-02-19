package A30DaysOfCode;

import java.util.Scanner;

public class Day6LetsReview {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int num = Integer.parseInt(scan.nextLine());

        for (int i = 0; i < num; i++) {
            String input = scan.next();
            String even = "";
            String odd = "";
            for (int j = 0; j < input.length(); j++) {
                if (j % 2 == 0) {
                    even += input.charAt(j);
                } else {
                    odd += input.charAt(j);
                }
            }
            System.out.print(even + " ");
            System.out.print(odd);
            System.out.println();
        }
    }
}

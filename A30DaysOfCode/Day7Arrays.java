package A30DaysOfCode;

import java.util.Scanner;

public class Day7Arrays {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] arr = new int[n];

        String[] arrItems = scanner.nextLine().split(" ");

        for (int i = 0; i < n; i++) {
          arr[i]= Integer.parseInt(arrItems[i]);
        }

        for (int i = arr.length; i <0 ; i--) {
            System.out.println(i);
        }
    }

}


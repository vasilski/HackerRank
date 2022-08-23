package A03DataStructures;

import java.util.Arrays;
import java.util.Scanner;

public class Java2DArray {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int[][] matrix = new int[6][6];


        for (int row = 0; row < 6; row++) {
            int[] lines = Arrays.stream(scan.nextLine().split(" ")).mapToInt(Integer::parseInt).toArray();
            for (int col = 0; col < 6; col++) {
                matrix[row][col] = lines[col];
            }
        }
        System.out.println(locationSum(matrix));

    }

    private static int locationSum(int[][] matrix) {
        int bestSum = Integer.MIN_VALUE;
        for (int row = 1; row < 5; row++) {
            for (int col = 1; col < 5; col++) {
                int sum = matrix[row][col] +
                         matrix[row + 1][col] +
                         matrix[row - 1][col] +
                         matrix[row - 1][col + 1] +
                         matrix[row - 1][col - 1] +
                         matrix[row + 1][col - 1] +
                         matrix[row + 1][col + 1];
                    if (sum > bestSum) {
                        bestSum = sum;
                    }
            }
        }
        return bestSum;
    }
}

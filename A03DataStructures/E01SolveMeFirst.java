package A03DataStructures;

import java.util.Scanner;

public class E01SolveMeFirst {

    static int solveMeFirst(int a, int b) {
        int sum = a + b;
        return sum;

    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a;
        a = in.nextInt();
        int b;
        b = in.nextInt();
        int sum;
        sum = solveMeFirst(a, b);
        System.out.println(sum);
    }
}

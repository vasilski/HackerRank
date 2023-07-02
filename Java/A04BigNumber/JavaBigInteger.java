package A04BigNumber;

import java.math.BigInteger;
import java.util.Scanner;

public class JavaBigInteger {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String firstNumber = scan.nextLine();
        String secondNumber = scan.nextLine();

        BigInteger A = new BigInteger(firstNumber);
        BigInteger B = new BigInteger(secondNumber);

        BigInteger add = A.add(B);
        BigInteger multiply = A.multiply(B);

        System.out.println(add);
        System.out.println(multiply);
    }
}

package A01Introduction;

import java.text.NumberFormat;
import java.util.Locale;
import java.util.Scanner;

public class JavaCurrencyFormatter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double payment = Double.parseDouble(scanner.nextLine());
        scanner.close();

        NumberFormat formatterUS = NumberFormat.getCurrencyInstance(Locale.US);
        NumberFormat formatterIn = NumberFormat.getCurrencyInstance(new Locale("en", "IN"));
        NumberFormat formatterChina = NumberFormat.getCurrencyInstance(Locale.CHINA);
        NumberFormat formatterFr = NumberFormat.getCurrencyInstance(Locale.FRANCE);
        String us = formatterUS.format(payment);
        String india = formatterIn.format(payment);
        String china = formatterChina.format(payment);
        String france = formatterFr.format(payment);


        System.out.println("US: " + us);
        System.out.println("India: " + india);
        System.out.println("China: " + china);
        System.out.println("France: " + france);

    }
}

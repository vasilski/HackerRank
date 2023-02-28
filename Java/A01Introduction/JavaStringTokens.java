package A01Introduction;

import java.util.Scanner;

public class JavaStringTokens {

    // error in case 9: case whit input - (                        )(space) Output == 0
    // output in my code is 1

    public static void main(String[] argh) {

        Scanner scan = new Scanner(System.in);

        String[] token = scan.nextLine().trim().split("[!,?._'@\\s+]+");

        if (token.length == 0 || token.length > 400000) {
            System.out.println(0);
            return;
        }

        System.out.println(token.length);
        for (String s : token) {
            System.out.println(s);
        }
    }
}

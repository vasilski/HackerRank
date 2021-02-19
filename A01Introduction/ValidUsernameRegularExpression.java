package A01Introduction;

import java.util.Scanner;

public class ValidUsernameRegularExpression {
    class UsernameValidator {
        //"(^[A-Za-z0-9]{7,29})"

        public static final String regularExpression = "(^[a-zA-Z][0-9_|a-zA-Z]{7,29})";

    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int n = Integer.parseInt(scan.nextLine());
        while (n-- != 0) {
            String userName = scan.nextLine();

            if (userName.matches(UsernameValidator.regularExpression)) {
                System.out.println("Valid");
            } else {
                System.out.println("Invalid");
            }
        }
    }
}

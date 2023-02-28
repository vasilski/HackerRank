package A01Introduction;

import java.util.ArrayDeque;
import java.util.Scanner;

public class JavaStringReverse {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        String input = scan.nextLine();

        ArrayDeque<Character> stack = new ArrayDeque<>();

        for (int i = 0; i < input.length(); i++) {
            char ch = input.charAt(i);
            stack.push(ch);
        }

        StringBuilder sb = new StringBuilder();
        for (Character ch : stack) {
            sb.append(ch);
        }
        String out = sb.toString();

        if (input.equals(out)) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
}

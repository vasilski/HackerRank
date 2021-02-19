package A01Introduction;

        import java.util.Scanner;

public class E02JavaOutputFormatting {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String s1 = sc.next();
        int x = sc.nextInt();
        System.out.println("================================");
        for (int i = 0; i <= 3; i++) {
            System.out.printf("%-15s%03d%n", s1, x);
            s1 = sc.next();
            x = sc.nextInt();
        }
        System.out.println("================================");

    }
}

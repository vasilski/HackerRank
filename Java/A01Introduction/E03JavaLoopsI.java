package A01Introduction;

        import java.util.Scanner;

public class E03JavaLoopsI {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int n = scan.nextInt();
        scan.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
        for (int i = 1; i <= 10; i++) {

            System.out.printf("%d x %d = %d%n", n, i, n * i);
            scan.close();
        }
    }
}

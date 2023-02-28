package A03DataStructures;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class JavaList {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int n = Integer.parseInt(scan.nextLine());

        List<Integer> numbers = new ArrayList<>();
        String[] numbersLine = scan.nextLine().split("\\s+");

        for (int i = 0; i < n; i++) {
            numbers.add(i, Integer.parseInt(numbersLine[i]));
        }

        int count = Integer.parseInt(scan.nextLine());

        while (count-- > 0) {
            String command = scan.nextLine();
            switch (command) {
                case "Insert":
                    String[] insertCommand = scan.nextLine().split("\\s+");
                    numbers.add(Integer.parseInt(insertCommand[0]), Integer.parseInt(insertCommand[1]));
                    break;
                case "Delete":
                    int removeIndex = Integer.parseInt(scan.nextLine());
                    numbers.remove(removeIndex);
            }
        }
        for (Integer number : numbers) {
            System.out.print(number + " ");
        }
    }
}

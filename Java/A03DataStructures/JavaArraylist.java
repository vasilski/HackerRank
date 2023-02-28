package A03DataStructures;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public class JavaArraylist {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int first = Integer.parseInt(scan.nextLine());

        List<List<Integer>> integerList = new ArrayList<>();

        for (int i = 0; i < first; i++) {
            List<Integer> input = Arrays.stream(scan.nextLine().trim().split("\\s+")).map(Integer::parseInt).collect(Collectors.toList());
            integerList.add(input);
        }

        for (int i = 0; i <first; i++) {
            integerList.get(i).remove(0);
        }

        int second = scan.nextInt();

        for (int i = 0; i <second; i++){
           int list = scan.nextInt();
           int index = scan.nextInt();

            try{
                int num = integerList.get(list-1).get(index-1);
                System.out.println(num);
            } catch(Exception ex) {
                System.out.println("ERROR!");
            }
        }
   }
}
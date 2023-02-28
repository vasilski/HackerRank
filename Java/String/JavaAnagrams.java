package String;

import java.util.Scanner;

public class JavaAnagrams {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        String a = scan.next();
        String b = scan.next();
        scan.close();
        boolean ret = isAnagram(a, b);
        System.out.println((ret) ? "Anagrams" : "Not Anagrams");
    }

    public static boolean isAnagram(String a, String b) {

        String firstAnagram = sort(a.toLowerCase());
        String secondAnagram = sort(b.toLowerCase());


        return firstAnagram.equalsIgnoreCase(secondAnagram);
    }
    //implementation of Bubble Sort
   public static String sort(String a) {

        char[] arr = a.toCharArray();
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // swap arr[j+1] and arr[j]
                    char temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return String.valueOf(arr);
    }
}

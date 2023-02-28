package A01Introduction;

import java.io.*;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.Scanner;

class Result {

        public static String findDay(int month, int day, int year) {
            LocalDate date = LocalDate.of(year, month, day);
            DayOfWeek n = DayOfWeek.from(date);
            DayOfWeek dateInt = DayOfWeek.of(n.getValue());
            String dayOfWeek = dateInt.name();

            return dayOfWeek;
        }
    }

    public class DateAndTime {
        public static void main(String[] args) throws IOException {
            Scanner scan = new Scanner(System.in);

            String[] firstMultipleInput = scan.nextLine().replaceAll("\\s+$", "").split(" ");

            int month = Integer.parseInt(firstMultipleInput[0]);

            int day = Integer.parseInt(firstMultipleInput[1]);

            int year = Integer.parseInt(firstMultipleInput[2]);

            String res = Result.findDay(month, day, year);

            System.out.println(res);
        }
    }



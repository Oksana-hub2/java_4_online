package ua.com.alevel.test;

import com.diogonunes.jcolor.AnsiFormat;

import static com.diogonunes.jcolor.Attribute.*;

public class Freedom {

    public static void showFreedom(String msg) {
        AnsiFormat fInfo = new AnsiFormat(YELLOW_TEXT());
        System.out.println(fInfo.format(msg));
    }
}


import  java.util.Scanner;
/**
 * Created by shangdishuoyaoyouguang on 16/10/8.
 */
public class Lab3 {
    public static void main(String[] args) {
        String encoded = "}kq$ckp$mp";
        //创建一个数组
        int[] aArray = new int[10];
        //用循环把encoded扔到数组里
        int i = 0;
        for (i = 0; i<10; i++) {
            //把encoded里的字符char用asc码提取为int后存入数组
            aArray[i] = encoded.charAt(i);
        }
        //创建一个新的bArray为msg的数组
        int[] bArray = new int[10];
        //手动输入密码进行尝试
        System.out.print("猜猜看密码是啥：");
        Scanner input = new Scanner(System.in);
        int pw = input.nextInt();
        for (i = 0; i < 10; i++){
            //把encoded和pw相乘后得到msg然后存入新的数组
            bArray[i] = aArray[i] ^ pw;
            System.out.print((char) bArray[i]);
        }

    }
}



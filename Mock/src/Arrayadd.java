import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Arrayadd {
    public static void rev(int ar[]){
        int i=0;
        int j=ar.length-1;
        while(i<=j){
            int c = ar[i];
            ar[i] = ar[j];
            ar[j] = c;
            i++;
            j--;
        }
    }

    public static void add(int ar1[],int ar2[]){
        int i=0;
        int j=0;
        int car=0;
        rev(ar1);
        rev(ar2);
        List<Integer> ans = new ArrayList<>();
        while(i<ar1.length || j<ar2.length){
            int f=0;
            if(i<ar1.length){
                f = ar1[i];
                i++;
            }
            int s = 0;
            if(j<ar2.length){
                s = ar2[j];
                j++;
            }
            int sum = (f+s+car);
            int val = sum%10;
            car = sum/10;
            ans.add(val);
        }
        if(car>0){
            ans.add(car);
        }
        Collections.reverse(ans);
        System.out.println(ans);
    }

}

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Pascal2
{
    public List<List<Integer>> generate(int numRows) {
        List<List<Integer>> ans = new ArrayList<>();
        List<Integer> preArray = new ArrayList<>();
        for(int i=1; i<=numRows; i++){
            List<Integer> subArray = new ArrayList<>();

            for(int j = 0; j< i; j++){
                if(j==0 || j==(i-1)) subArray.add(1);
                else{
                    subArray.add(preArray.get(j-1) + preArray.get(j));
                }
            }
            preArray =  subArray;
            ans.add(subArray);
        }
        return ans;
    }
}


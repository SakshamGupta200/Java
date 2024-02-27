public class Integer1 {
    public static void main(String[] args ){
        int i;
        int arr[] = new int[10];
        for(i = 0; i < 10; i++){
            arr[i] = i+1;
        }

        for (i = 9; i >= 0; i--){
            System.out.println(arr[i]);
        }
    }
}

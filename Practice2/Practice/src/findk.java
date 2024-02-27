// Online Java Compiler
// Use this editor to write, compile and run your Java code online
import java.util.*;
class HelloWorld {
    public static void find(int arr[], int k){
        int n = arr.length;
        for(int i=0;i<k;i++){
            if(arr[k]<arr[i]){
                System.out.println("kth smallest number is :"+arr[k]);
                break;
            }
        }
        for(int j=n-1;j>=0;j--){
            if(arr[k]>arr[j]){
                System.out.println("kth largest number is :"+arr[k]);
                break;
            }
        }
    }
    public static void main(String[] args) {
       int n,k;
       Scanner sc = new Scanner(System.in);
       System.out.println("Enter Size of array :");
       n = sc.nextInt();
       int arr[] = new int[n];
       System.out.println("Enter kth no.");
       k = sc.nextInt();
       System.out.println("Enter Elements:");
       for(int i=0;i<n-1;i++){
           arr[i] = sc.nextInt();
       }
       for (int i=0;i<n;i++){
           for(int j=i+1;j<n-i-1;j++){
               if(arr[j]<arr[j+1]){
                   int temp = arr[j];
                   arr[j] = arr[j+1];
                   arr[j+1] = temp;
               }
           }
       }
       find(arr, k);
    }
}
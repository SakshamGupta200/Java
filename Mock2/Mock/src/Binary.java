/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Hogwarts
 */
public class Binary {
    
    public static int Search(int arr[], int search){
        int n=arr.length;
        int m = n/2;
        
        for(int i=0;i<m;i++){
            if(arr[i]==search){
                return i;
            }
           
        }
         return -1;
    }
    public static void main(String[] args) {
        int arr[] = {10,9,8,7,6,5,4,3,2,1};
        int n = arr.length;
        int search = 6;
        int res = Search(arr,search);
        System.out.println("Elements present at index "+res);
    }
    
}

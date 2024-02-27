import java.util.Scanner;
class Pattern
{
    public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        System.out.print("Size : ");
        //Taking size as input from user
        int r, c;
        int size=scan.nextInt();

        //Outer loop
        for(r = 0; r<size; r++)
        {
            //Inner loop
            for(c = 0; c<size; c++)
            {
                //Condition to print star
                if(r==0||c==size/2)
                    System.out.print("*");
                else
                    System.out.print(" ");
            }        //Prints a new line
            System.out.println();
        }
    }
}
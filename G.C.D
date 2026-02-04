import java.util.Scanner;
class Main
{
	static Scanner sc=new Scanner(System.in);
	public static void main(String[]args)
	{
		System.out.println("Enter a:");
		int a=sc.nextInt();
		
		System.out.println("Enter b:");
		int b=sc.nextInt();
		
		//remove (-)sign
		a = Math.abs(a);
        b = Math.abs(b);
		
		//find smallest
		int smallest=(a<b)?a:b;
		
		int ans=0;
		
		if (a==0 && b==0)
		{
			System.out.println("GCD is undefined");
			return;
		}
		else if (a==0)
		{
			System.out.println("GCD is "+b);
			return;
		}
		else if (b==0)
		{
			System.out.println("GCD is "+a);
			return;
		}
		
		for (int i=smallest;i>=1;i-- )
		{
			if (a%i==0 && b%i==0)
			{
				ans=i;
				break;
			}
		}
		
		System.out.println("Greatest Common Divisor is "+ans);
	}
}
/*
Enter a:
20
Enter b:
15
Greatest Common Divisor is 5

*/

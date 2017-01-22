package Java;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Operacoes op = new Operacoes();
		
		int a;
		
		Scanner in = new Scanner(System.in);
		
		a = in.nextInt();
		
		switch(a){
			case 1:
				System.out.println(op.dividir(1,0));
			default:
				
		}
	}

}

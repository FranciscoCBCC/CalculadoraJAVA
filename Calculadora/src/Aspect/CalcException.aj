package Aspect;
import Java.*;
import javax.swing.JOptionPane;

public aspect CalcException {
	pointcut operacao ():call(int Operacoes.divisao(..));
	
	before(): operacao(){
		System.out.println("Teste");
	}
	after() throwing (java.lang.ArithmeticException a): 
		call(void Operacao.*(..)) 
		{
		System.out.println("Erro");
		//JOptionPane.showMessageDialog(null,a.getMessage(),"Erro",0);		 
		 System.exit(0);
		}
}

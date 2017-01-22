package Java;


public aspect CalcException {
	pointcut operacao ():call(* Operacoes.dividir(..));
	//pointcut operacao(): execution (* Operacoes.dividir(..));
	/*AfterThrowing(pointcut="execution(public int Operacoes.divisao(..))",throwing="ArithmeticException"){
		System.out.println("Exceção");
	}
	*/
	
	//before(): operacao(){
	//	System.out.println("Antes");
	//}
	
	after() throwing (ArithmeticException a): 
		call(void Operacao.*(..)) 
		{
		System.out.println("Exception captada");
		//JOptionPane.showMessageDialog(null,a.getMessage(),"Erro",0);		 
		 System.exit(0);
		}
		
}

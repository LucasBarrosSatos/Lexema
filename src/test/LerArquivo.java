package test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;

public class LerArquivo {

	public static void main(String[] args) {
		
		GerarFile gerar = new GerarFile();
		
		String nome = gerar.File();
		String conteudo = new String();
		
		System.out.printf("\nConteúdo do arquivo texto: ");
		try {
                    try (FileReader arq = new FileReader(nome)) {
                        BufferedReader lerArq = new BufferedReader(arq);
                        
                        String linha = lerArq.readLine();
                        while (linha != null) {
                            conteudo += linha;
                            System.out.printf("%s\n", linha);
                            
                            linha = lerArq.readLine();
                        }
                        System.out.println();
                        Exemplo lexico = new Exemplo(new StringReader(conteudo));
                        lexico.yylex();
                    }
		} catch (IOException e) {
			System.err.printf("Erro na abertura do arquivo: %s.\n",e.getMessage());
		}
	}
}
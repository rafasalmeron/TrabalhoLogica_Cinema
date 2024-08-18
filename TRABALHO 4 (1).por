programa
{
	inteiro quant=0, totalIngresso=0, numIngresso=0, pipoca=0, refrigerante=0, chocolate=0
funcao inicio()
{
    inteiro lugar[10][12], opcao, fileira=0, coluna=0  
    cadeia developers[5] = {"Rafael", "Felipe", "Patrick", "Suru", "Deny"}
	    escreva("----------------------\n",
	            " BEM VINDO AO CINEMA X \n",
	            "----------------------\n\n") 
		 faca{
	 	 menu()
	 	 escreva("Digite sua opção:")
		 leia(opcao)
		 escolha(opcao){

			caso 1: comprarIngresso(fileira, lugar, coluna)
			pare
			caso 2: listar(lugar)
			pare
			caso 3: bomboniere(pipoca, refrigerante, chocolate)
			pare
			caso 4: carrinho(pipoca, refrigerante, chocolate)
		     pare
		     caso 5: sair(developers)
		     pare
			caso contrario: escreva("contrario")
			pare
		 }
		}enquanto(opcao!=5)
}
funcao comprarIngresso(inteiro a, inteiro l[][], inteiro b){
	escreva("Digite a fileira e a coluna:")
	leia(a)
	leia(b)
	para(inteiro f=0; f < 10; f++){
        para(inteiro c=0; c < 12; c++){
            se(l[a-1][b-1]==0){
            	l[a-1][b-1] = 1
            	escreva("\nAssento reservado com sucesso!\n")
            	listar(l)
            	numIngresso++
            	pare
            	}senao se(l[a-1][b-1]!=0){}
            	senao{
            		escreva("\nAssento reservado, escolha outro assento")
            		pare
            		}
        }
    }
	}
funcao escolherAssento(){
	escreva("Qual assento você deseja?:")
	
	}
funcao listar(inteiro l[][]){
	para(inteiro f=0; f < 10; f++){
        para(inteiro c=0; c < 12; c++){
            //l[f][c] = 0 
            escreva(l[f][c], " ")
        }
        escreva("\n")
    }
	}
funcao carrinho(inteiro &p, inteiro &r, inteiro &c){
		  inteiro	total, totalP, totalR, totalC
		  totalIngresso = numIngresso*20
		  totalP = p*5
		  totalR = r*3
		  totalC = c*2
		  total = totalP+totalR+totalC+totalIngresso
	                
	escreva("Ingressos: ",totalIngresso,"\n",
		   "Pipoca: ",totalP,"\n",
		   "Refrigerante: ",totalR,"\n",
		   "Chocolate: ",totalC,"\n")
		    escreva("Total: ", total, "\n")
	}
funcao bomboniere(inteiro &p, inteiro &r, inteiro &c){
		inteiro opcao2
	faca{
		escreva("-----------MENU------------\n",
			   "|1- Pipoca             	   |\n",
		        "|2- Refrigerante           |\n",
		        "|3- Chocolate              |\n",
		        "|4- Voltar ao menu anterior|\n",
		         "---------------------------\n",
		         "Digite sua escolha: ")
		leia(opcao2)
	escolha(opcao2){

			caso 1: escreva("Pipoca selecionado!\n")
				   p++
				   p = pipoca
			pare
			caso 2: escreva("Refrigerante selecionado!\n")
				   r++
				   refrigerante = r
			pare
			caso 3:escreva("Chocolate selecionado!\n")
				   c++
				   chocolate = c
			pare
			caso 4:inicio()
			pare
			caso contrario: escreva("contrario")
			pare
			}
		}enquanto(opcao2!=4)
	}
funcao sair(cadeia a[]){
            escreva("\n--------------------------------------")
            escreva("\n---Obrigado por utilizar nosso APP!---\n")
            escreva("--------------------------------------\n\n")
            escreva("Turma: 20  Grupo: 5\n\n")
            escreva("Desenvolvedores: \n")
            para(inteiro i=0; i < 5; i++){
            escreva("*",a[i],"\n")
        }
        }
funcao menu(){
	escreva("\nCinema X\n",
"----------------------------------\n",
"1- Comprar ingresso\n",
"2- Listar assentos\n",
"3- Bomboniére\n",
"4- Carrinho\n",
"5- Sair do programa\n",
"----------------------------------\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 800; 
 * @DOBRAMENTO-CODIGO = [51, 55];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
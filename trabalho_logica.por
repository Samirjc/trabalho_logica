programa
{
	
	funcao inicio()
	{
		inteiro matriz[10][12]
		inteiro interacaoUsuario = 1
		inteiro numeroFileira = 0
		inteiro numeroPoltrona = 0
		
		para(numeroFileira; numeroFileira < 10; numeroFileira++){
			escreva("\n")
			para(numeroPoltrona=0;  numeroPoltrona < 12; numeroPoltrona++){
				matriz[numeroFileira][numeroPoltrona]=0
				
			}
		}
        
        escreva("*Bem vindo ao CineGrupo-4*\n\n")

		enquanto(interacaoUsuario != 0){

			escreva("Escolha uma das opções abaixo para continuar.\n\n",
					"1 - Reservar um assento.\n",
					"2 - Consultar assentos reservados.\n",
					"0 - Finalizar o sistema.\nDigite aqui: ")
			
			leia(interacaoUsuario)
			limpa()
			escreva("\n")
				
			se(interacaoUsuario == 1){
				escreva("Numero da fileira:")
				leia(numeroFileira)
				numeroFileira--
				escreva("Numero da Poltrona:")
				leia(numeroPoltrona)
				numeroPoltrona--
				limpa()
					
				se(numeroFileira < 0 ou numeroFileira >= 10) {
				    escreva("Fileira inválida. Tente novamente\n")
				}senao se(numeroPoltrona < 0 ou numeroPoltrona >= 12){
					escreva("Poltrona inválida. Tente novamente\n")
				}senao{
				    se(matriz[numeroFileira][numeroPoltrona]==1){
					    escreva("Este assento já está reservado:\n\n")
					
				    }senao{
					    matriz[numeroFileira][numeroPoltrona]=1
					    escreva("Sua reserva foi realizada com sucesso:\n\n")
				    }
				}
			}senao se(interacaoUsuario == 2){

				escreva("1  2  3  4  5  6  7  8  9  10 11 12    \n")

				para(inteiro l = 0; l < 10; l++){
					para(inteiro c = 0; c < 12; c++){
    	        		 escreva(matriz[l][c], "  ")
        			}
				    escreva(" |", l+1, "\n")
                }
				escreva("\n\n\n")
					
			}senao se(interacaoUsuario == 0){
				escreva("Sistema finalizado.\n\n")
					
			}senao{
				escreva("Opção desejada é inválida.\n\n")
			}
		}
	}
}
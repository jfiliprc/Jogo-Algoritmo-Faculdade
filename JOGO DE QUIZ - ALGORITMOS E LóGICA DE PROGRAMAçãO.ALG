Algoritmo "Jogo de Quiz - Algoritmos e Lógica de Programação"
// Disciplina   : Algoritmos e Lógica de Programação
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Este programa permite que os jogadores testem seus conhecimentos sobre "Algoritmos e Lógica de Programação" respondendo a uma série de perguntas e, ao final, recebem uma pontuação com base em seu desempenho. A classificação de desempenho ajuda a identificar o quão bem o jogador se saiu no jogo.
// Autor(a)    : João Felipe Rocha
// Data atual  : 20/09/2023
Var
// Seção de Declarações das variáveis
    pontuacao_total, resposta_do_jogador : inteiro
    perguntas_e_respostas : vetor de registro
        pergunta : string
        resposta_correta : string

Inicio
    // Seção de Comandos, procedimentos, funções, operadores, etc...
    pontuacao_total <- 0

    // Definição das perguntas e respostas
    perguntas_e_respostas[1].pergunta <- "O que é um algoritmo?"
    perguntas_e_respostas[1].resposta_correta <- "Um conjunto de passos para resolver um problema"
    perguntas_e_respostas[2].pergunta <- "O que é uma variável em programação?"
    perguntas_e_respostas[2].resposta_correta <- "Um local para armazenar dados"
    perguntas_e_respostas[3].pergunta <- "O que é um loop 'for'?"
    perguntas_e_respostas[3].resposta_correta <- "Uma estrutura de repetição"

    // Loop para apresentar as perguntas
    para x de 1 até 3 passo 1 faça
        mostrar(perguntas_e_respostas[x].pergunta)
        resposta_do_jogador <- obter_resposta_do_jogador()

        // Avaliação da resposta
        se resposta_do_jogador = perguntas_e_respostas[x].resposta_correta então
            mostrar("Resposta correta! Você ganhou 10 pontos.")
            pontuacao_total <- pontuacao_total + 10
        senão
            mostrar("Resposta incorreta na primeira tentativa. Tente novamente.")
            resposta_do_jogador <- obter_resposta_do_jogador()

            se resposta_do_jogador = perguntas_e_respostas[x].resposta_correta então
                mostrar("Resposta correta na segunda tentativa! Você ganhou 5 pontos.")
                pontuacao_total <- pontuacao_total + 5
            senão
                mostrar("Resposta incorreta na segunda tentativa. Nenhum ponto ganho.")
    fimpara

    // Exibir pontuação total e classificação de desempenho
    mostrar("Pontuação total: " + pontuacao_total)
    mostrar(classificar_desempenho(pontuacao_total))
    mostrar_respostas_corretas_e_incorretas(perguntas_e_respostas)

Fimalgoritmo

Função obter_resposta_do_jogador(): inteiro
    resposta : string
    mostrar("Digite sua resposta:")
    ler(resposta)
    retornar resposta

Função classificar_desempenho(pontuacao: inteiro): string
    se pontuacao = 100 então
        retornar "EXCELENTE! Você atingiu 100 pontos."
    senão, se pontuacao >= 75 então
        retornar "ÓTIMO"
    senão, se pontuacao >= 50 então
        retornar "BOM"
    senão, se pontuacao >= 25 então
        retornar "REGULAR"
    senão
        retornar "PÉSSIMO"

Procedimento mostrar_respostas_corretas_e_incorretas(perguntas_e_respostas: vetor de registro)
    mostrar("Respostas corretas e incorretas:")
    para x de 1 até tamanho(perguntas_e_respostas) passo 1 faça
        mostrar("Pergunta: " + perguntas_e_respostas[x].pergunta)
        mostrar("Resposta correta: " + perguntas_e_respostas[x].resposta_correta)
    fimpara

Algoritmo "Jogo de Quiz - Algoritmos e L�gica de Programa��o"
// Disciplina   : Algoritmos e L�gica de Programa��o
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Este programa permite que os jogadores testem seus conhecimentos sobre "Algoritmos e L�gica de Programa��o" respondendo a uma s�rie de perguntas e, ao final, recebem uma pontua��o com base em seu desempenho. A classifica��o de desempenho ajuda a identificar o qu�o bem o jogador se saiu no jogo.
// Autor(a)    : Jo�o Felipe Rocha
// Data atual  : 20/09/2023
Var
// Se��o de Declara��es das vari�veis
    pontuacao_total, resposta_do_jogador : inteiro
    perguntas_e_respostas : vetor de registro
        pergunta : string
        resposta_correta : string

Inicio
    // Se��o de Comandos, procedimentos, fun��es, operadores, etc...
    pontuacao_total <- 0

    // Defini��o das perguntas e respostas
    perguntas_e_respostas[1].pergunta <- "O que � um algoritmo?"
    perguntas_e_respostas[1].resposta_correta <- "Um conjunto de passos para resolver um problema"
    perguntas_e_respostas[2].pergunta <- "O que � uma vari�vel em programa��o?"
    perguntas_e_respostas[2].resposta_correta <- "Um local para armazenar dados"
    perguntas_e_respostas[3].pergunta <- "O que � um loop 'for'?"
    perguntas_e_respostas[3].resposta_correta <- "Uma estrutura de repeti��o"

    // Loop para apresentar as perguntas
    para x de 1 at� 3 passo 1 fa�a
        mostrar(perguntas_e_respostas[x].pergunta)
        resposta_do_jogador <- obter_resposta_do_jogador()

        // Avalia��o da resposta
        se resposta_do_jogador = perguntas_e_respostas[x].resposta_correta ent�o
            mostrar("Resposta correta! Voc� ganhou 10 pontos.")
            pontuacao_total <- pontuacao_total + 10
        sen�o
            mostrar("Resposta incorreta na primeira tentativa. Tente novamente.")
            resposta_do_jogador <- obter_resposta_do_jogador()

            se resposta_do_jogador = perguntas_e_respostas[x].resposta_correta ent�o
                mostrar("Resposta correta na segunda tentativa! Voc� ganhou 5 pontos.")
                pontuacao_total <- pontuacao_total + 5
            sen�o
                mostrar("Resposta incorreta na segunda tentativa. Nenhum ponto ganho.")
    fimpara

    // Exibir pontua��o total e classifica��o de desempenho
    mostrar("Pontua��o total: " + pontuacao_total)
    mostrar(classificar_desempenho(pontuacao_total))
    mostrar_respostas_corretas_e_incorretas(perguntas_e_respostas)

Fimalgoritmo

Fun��o obter_resposta_do_jogador(): inteiro
    resposta : string
    mostrar("Digite sua resposta:")
    ler(resposta)
    retornar resposta

Fun��o classificar_desempenho(pontuacao: inteiro): string
    se pontuacao = 100 ent�o
        retornar "EXCELENTE! Voc� atingiu 100 pontos."
    sen�o, se pontuacao >= 75 ent�o
        retornar "�TIMO"
    sen�o, se pontuacao >= 50 ent�o
        retornar "BOM"
    sen�o, se pontuacao >= 25 ent�o
        retornar "REGULAR"
    sen�o
        retornar "P�SSIMO"

Procedimento mostrar_respostas_corretas_e_incorretas(perguntas_e_respostas: vetor de registro)
    mostrar("Respostas corretas e incorretas:")
    para x de 1 at� tamanho(perguntas_e_respostas) passo 1 fa�a
        mostrar("Pergunta: " + perguntas_e_respostas[x].pergunta)
        mostrar("Resposta correta: " + perguntas_e_respostas[x].resposta_correta)
    fimpara

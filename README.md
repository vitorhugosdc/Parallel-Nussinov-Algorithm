# Algoritmo de Nussinov para Previsão de Estruturas Secundárias de RNA
## Sobre o Trabalho
Este trabalho foi desenvolvido para a disciplina de Programação Concorrente e envolve a previsão de estruturas secundárias de RNA utilizando o algoritmo de Nussinov. Implementações paralelas do algoritmo foram realizadas utilizando Pthreads e MPI para otimizar a previsão e comparar o desempenho entre as abordagens.

O artigo contendo a explicação completa e detalhada, incluindo resultados, está disponível no documento `Artigo.pdf` neste mesmo repositório.

## Arquitetura do Algoritmo
O algoritmo de Nussinov é um método de programação dinâmica utilizado para prever estruturas secundárias de RNA, maximizando o número de pares de bases. As implementações paralelas foram desenvolvidas para aproveitar melhor os recursos de computação moderna e acelerar o processo de previsão.

## Implementações Paralelas
### Pthreads
Na implementação com Pthreads, a matriz de previsão é dividida entre várias threads, que calculam simultaneamente as melhores estruturas secundárias de RNA. A sincronização entre as threads é realizada utilizando barreiras para garantir a consistência dos cálculos.

### MPI
Na implementação com MPI, a matriz é dividida entre diferentes processos que comunicam suas atualizações através de mensagens. Esta abordagem visa minimizar o tempo de comunicação e maximizar o uso eficiente de múltiplos núcleos de processamento.

## Execução

#### Obs
<tamanho_da_sequencia> refere-se ao tamanho da matriz, que podem ser 3 possibilidades, small, medium e large.
### Versão Sequencial
Para executar a versão sequencial, utilize o script test_seq.sh:

```bash
./test_seq.sh <tamanho_da_sequencia> <numero_de_repeticoes>

exemplo:
./test_seq.sh small 2
```

### Versão com Pthreads
Para executar a versão com pthreads, utilize o script test_pthreads.sh:

```bash
./test_pthreads.sh <tamanho_da_sequencia> <numero_de_threads> <numero_de_repeticoes>

exemplo:
./test_pthreads.sh medium 4 7
```
### Versão com MPI
Para executar a versão com MPI, utilize o script test_mpi.sh:

```bash
./test_mpi.sh <tamanho_da_sequencia> <numero_de_processos> <numero_de_repeticoes>

exemplo:
./test_mpi.sh large 3 1
```

# Resultados

Os resultados são analisados em termos de speedup e eficiência. O speedup é definido como a razão entre o tempo de execução da versão sequencial e o tempo de execução da versão paralelizada. A eficiência é a razão entre o speedup e o número de threads/processos utilizados. Os detalhes completos da análise estão disponíveis no `Artigo.pdf`.

# Nota sobre o Repositório Original
Este trabalho foi originalmente desenvolvido e publicado no repositório [programacao-concorrente](https://github.com/vitorhugosdc/programacao-concorrente). No entanto, foi reestruturado e organizado neste novo repositório para melhor clareza.

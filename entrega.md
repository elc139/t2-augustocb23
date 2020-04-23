# T2

Nome: Augusto César Bisognin

[Resultados](results.csv)

## Questões PThreads

1. O particionamento é feito ao separar o cálculo dos vetores em uma função independente, desacoplada do restante do código. Dentro da função `void *dotprod_worker(void *arg)` está o cálculo que pode ser paralelizado. A comunicação encontra-se ao armazenar o resultado em `dotdata.c`, pois o valor depende do resultado atual e do valor calculado pela thread. O uso de mutex nas linhas 45 e 47 evitam possíveis problemas nessa operação. A aglomeração acontece ao primeiro executar os laços de repetição (linhas 38 a 43) e somente armazenar o resultado final, ao invés de salvar a cada iteração. O mapeamento é feito pela função `void dotprod_threads(int nthreads)`, quem cria (linha 69) e aguarda (linha 73) as threads.
2. Ao utilizar threads, a execução aconteceu em aproximadamente metade do tempo.
3. Analisando os dados, percebi que o ganho é um pouco menor ao utilizar 4 threads e consideravelmente menor ao utilizar 8 threads.
4. [Tabela de resultados](pthreads_dotprod/resultados.md)
5. As linhas removidas fazem o controle de uma região crítica do código. Como a soma depende do valor anterior, caso a thread perca o processador após ler o valor atual e antes de salvar o novo valor, quando voltasse a executar iria atualizar o dado com um valor incorreto (ignorando as adições de outras threads durante o período que esta estava aguardando).

## Questões OpemMP

1. [Código](openmp/omp_dotprod.c)
2. [Tabela de resultados](openmp/resultados.md)

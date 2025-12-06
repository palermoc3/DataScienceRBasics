<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>R Basics para Análise de Dados - HarvardX</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        code {
            background-color: #eee;
            padding: 2px 4px;
            border-radius: 3px;
        }
        pre {
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 5px;
            overflow-x: auto;
        }
    </style>
</head>
<body>

    <h1>📚 R Basics para Análise de Dados (Seção 1 - HarvardX Data Science)</h1>

    <p>Este README resume os <strong>conceitos fundamentais e comandos essenciais</strong> do R, cobrindo a Seção 1 do curso de Análise de Dados da HarvardX. Foco em tipos de dados, vetores, indexação e manipulação inicial de <code>data frames</code> (tabelas), que são a base para qualquer projeto de Ciência de Dados.</p>

    <hr>

    <h2>1. ⚙️ Configuração e Pacotes</h2>

    <table>
        <thead>
            <tr>
                <th>Tarefa</th>
                <th>Comando R</th>
                <th>Notas</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Instalar Pacote Único</strong></td>
                <td><code>install.packages("package_name")</code></td>
                <td>Deve ser feito apenas uma vez por versão do R.</td>
            </tr>
            <tr>
                <td><strong>Instalar Múltiplos Pacotes</strong></td>
                <td><code>install.packages(c("pkg1", "pkg2"))</code></td>
                <td>Instala vários pacotes de uma vez.</td>
            </tr>
            <tr>
                <td><strong>Carregar Pacote</strong></td>
                <td><code>library(package_name)</code></td>
                <td>Essencial! Deve ser feito em cada nova sessão do R para usar as funções do pacote (ex: <code>tidyverse</code>, <code>dslabs</code>).</td>
            </tr>
            <tr>
                <td><strong>Ver Pacotes Instalados</strong></td>
                <td><code>installed.packages()</code></td>
                <td>Exibe uma lista de todos os pacotes instalados.</td>
            </tr>
            <tr>
                <td><strong>Carregar Dataset do Pacote</strong></td>
                <td><code>data("dataset_name")</code></td>
                <td>Carrega um dataset embutido de um pacote (ex: <code>data("murders")</code>).</td>
            </tr>
        </tbody>
    </table>

    <hr>

    <h2>2. 🧱 Tipos de Objetos e Dados Fundamentais</h2>

    <table>
        <thead>
            <tr>
                <th>Conceito</th>
                <th>Descrição</th>
                <th>Comando Útil</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Variável</strong></td>
                <td>Armazena um valor ou objeto. Usa o operador de atribuição <code>&lt;-</code>.</td>
                <td><code>x &lt;- 10</code></td>
            </tr>
            <tr>
                <td><strong><code>class()</code></strong></td>
                <td>Determina o tipo de objeto/dados (ex: <code>numeric</code>, <code>character</code>).</td>
                <td><code>class(x)</code></td>
            </tr>
            <tr>
                <td><strong><code>str()</code></strong></td>
                <td>Exibe a estrutura de um objeto (muito útil para <code>data frames</code>).</td>
                <td><code>str(murders)</code></td>
            </tr>
            <tr>
                <td><strong><code>head()</code></strong></td>
                <td>Mostra as primeiras 6 linhas de um <code>data frame</code>.</td>
                <td><code>head(murders)</code></td>
            </tr>
        </tbody>
    </table>

    <h3>A. Vetores (Vectors)</h3>
    <p>Um vetor é o objeto de dados mais básico do R, consistindo em entradas do <strong>mesmo tipo</strong>.The function as.character() turns numbers into characters.
The function as.numeric() turns characters into numbers.</p>

    <table>
        <thead>
            <tr>
                <th>Tipo</th>
                <th>Exemplo</th>
                <th>Classe</th>
                <th>Notas</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Numérico</strong></td>
                <td><code>c(1, 5, 10.5)</code></td>
                <td><code>numeric</code></td>
                <td>Números inteiros ou decimais.</td>
            </tr>
            <tr>
                <td><strong>Caractere</strong></td>
                <td><code>c("a", "b", "c")</code></td>
                <td><code>character</code></td>
                <td>Textos e strings.</td>
            </tr>
            <tr>
                <td><strong>Lógico</strong></td>
                <td><code>c(TRUE, FALSE, T)</code></td>
                <td><code>logical</code></td>
                <td>Apenas <code>TRUE</code> ou <code>FALSE</code>.</td>
            </tr>
            <tr>
                <td><strong>Fator</strong></td>
                <td>Armazena dados categóricos de forma eficiente.</td>
                <td><code>factor</code></td>
                <td>Criado por R, útil para variáveis como <code>region</code>. Use <code>levels()</code> e <code>nlevels()</code>.</td>
            </tr>
        </tbody>
    </table>

    <p><strong>Comandos Chave para Vetores:</strong></p>
    <ul>
        <li><strong>Criar Vetor:</strong> <code>c(v1, v2, ...)</code> (Concatenar)</li>
        <li><strong>Criar Sequência:</strong> <code>seq(from=1, to=10, by=2)</code></li>
        <li><strong>Contar Elementos:</strong> <code>length(my_vector)</code></li>
        <li><strong>Aritmética:</strong> As operações (ex: <code>+</code>, <code>-</code>, <code>/</code>) são realizadas <strong>elemento-a-elemento</strong>. Ex: <code>c(1, 2) + c(10, 20)</code> resulta em <code>11 22</code>.</li>
    </ul>

    <h3>B. Data Frames (Tabelas)</h3>
    <p>São como tabelas, onde as <strong>linhas</strong> são observações e as <strong>colunas</strong> são variáveis.</p>
    <ul>
        <li><strong>Criação:</strong> <code>data.frame(col1 = vetor1, col2 = vetor2)</code></li>
        <li><strong>Acessar Coluna:</strong> Use o <strong>Operador Acessor <code>$</code></strong>. Ex: <code>murders$population</code> (retorna o vetor da coluna <code>population</code>).</li>
        <li><strong>Nomes das Colunas:</strong> <code>names(murders)</code></li>
    </ul>

    <hr>

    <h2>3. 🎯 Indexação e Subsetting</h2>
    <p>Usamos <strong>colchetes <code>[]</code></strong> para acessar partes específicas de um vetor ou <code>data frame</code>.</p>

    <table>
        <thead>
            <tr>
                <th>Tarefa</th>
                <th>Comando R</th>
                <th>Resultado</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Indexar por Posição</strong></td>
                <td><code>pop[10]</code></td>
                <td>Retorna o 10º elemento do vetor <code>pop</code>.</td>
            </tr>
            <tr>
                <td><strong>Indexar por Lógicos</strong></td>
                <td><code>pop[index]</code></td>
                <td>Retorna apenas os elementos de <code>pop</code> onde o vetor lógico <code>index</code> é <code>TRUE</code>.</td>
            </tr>
            <tr>
                <td><strong>Lógicos &</strong></td>
                <td><code>index &lt;- A &amp; B</code></td>
                <td><code>TRUE</code> se A e B forem <code>TRUE</code>.</td>
            </tr>
            <tr>
                <td><strong>Contar <code>TRUE</code>s</strong></td>
                <td><code>sum(index)</code></td>
                <td>Retorna o número de entradas <code>TRUE</code> (quantas observações atendem à condição).</td>
            </tr>
        </tbody>
    </table>

    <hr>

    <h2>4. 🔢 Funções de Ordenação e Resumo</h2>

    <table>
        <thead>
            <tr>
                <th>Função</th>
                <th>O que faz</th>
                <th>Exemplo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong><code>sort()</code></strong></td>
                <td>Retorna o vetor ordenado.</td>
                <td><code>sort(murder_rate)</code></td>
            </tr>
            <tr>
                <td><strong><code>order()</code></strong></td>
                <td>Retorna os <strong>índices</strong> que ordenariam o vetor original.</td>
                <td><code>murders$state[order(murder_rate)]</code></td>
            </tr>
            <tr>
                <td><strong><code>rank()</code></strong></td>
                <td>Retorna as <strong>posições</strong> (ranks) dos itens no vetor original.</td>
                <td><code>rank(c(10, 5, 15))</code> retorna <code>2 1 3</code></td>
            </tr>
            <tr>
                <td><strong><code>max()</code> / <code>min()</code></strong></td>
                <td>Retorna o valor máximo/mínimo.</td>
                <td><code>max(pop)</code></td>
            </tr>
            <tr>
                <td><strong><code>which.max()</code> / <code>which.min()</code></strong></td>
                <td>Retorna o <strong>índice</strong> (posição) do valor máximo/mínimo.</td>
                <td><code>murders$state[which.max(murders$population)]</code></td>
            </tr>
        </tbody>
    </table>

    <hr>

    <h2>5. 🔀 Manipulação de Dados (<code>dplyr</code>) - O Básico</h2>
    <p>O pacote <code>dplyr</code> (parte do <code>tidyverse</code>) é essencial para a manipulação eficiente de <code>data frames</code>.</p>

    <h3>A. O Operador Pipe (<code>%>%</code>)</h3>
    <p>O <code>%>%</code> passa o resultado da função anterior como o <strong>primeiro argumento</strong> da próxima função. Ele melhora a legibilidade do código, permitindo encadear operações.</p>
    <p><strong>Sintaxe:</strong> <code>dados %&gt;% função1() %&gt;% função2()</code></p>

    <h3>B. Funções Chave</h3>

    <table>
        <thead>
            <tr>
                <th>Função</th>
                <th>Objetivo</th>
                <th>Exemplo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong><code>mutate()</code></strong></td>
                <td><strong>Adicionar</strong> uma nova coluna ou <strong>modificar</strong> uma existente.</td>
                <td><code>murders %&gt;% mutate(rate = total / population * 100000)</code></td>
            </tr>
            <tr>
                <td><strong><code>filter()</code></strong></td>
                <td><strong>Subconjunto de linhas</strong> baseado em uma condição lógica.</td>
                <td><code>murders %&gt;% filter(rate &lt;= 0.71)</code></td>
            </tr>
            <tr>
                <td><strong><code>select()</code></strong></td>
                <td><strong>Subconjunto de colunas</strong> para manter apenas as variáveis desejadas.</td>
                <td><code>murders %&gt;% select(state, region, rate)</code></td>
            </tr>
        </tbody>
    </table>

    <h4>Exemplo de Encadeamento (Pipe)</h4>
    <pre><code>
murders %&gt;%
  mutate(rate = total / population * 100000) %&gt;%
  select(state, region, rate) %&gt;%
  filter(rate &lt;= 0.71)
    </code></pre>

    <hr>

    <h2>6. 📊 Criação de Gráficos Básicos</h2>
    <p>A visualização de dados inicial (usando <code>ggplot2</code>) também se beneficia do pipe:</p>
    <pre><code>
murders %&gt;%
  ggplot(aes(population, total, label=abb, color=region)) +
  geom_label()
    </code></pre>
    <ul>
        <li>O pipe (<code>%&gt;%</code>) passa o <code>murders</code> para a função <code>ggplot()</code>.</li>
        <li><code>ggplot()</code> define o canvas e os <strong>eixos</strong> (<code>aes</code> = <em>aesthetics</em>).</li>
        <li>O <code>+</code> adiciona uma <strong>camada geométrica</strong> (<code>geom_label()</code> para pontos rotulados).</li>
    </ul>

</body>
</html>
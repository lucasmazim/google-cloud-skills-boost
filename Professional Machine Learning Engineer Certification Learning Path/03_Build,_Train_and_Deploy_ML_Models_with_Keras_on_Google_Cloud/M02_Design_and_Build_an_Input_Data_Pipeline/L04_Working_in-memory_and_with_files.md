# Working_in-memory_and_with_files

# 📥 **Criando Pipelines de Entrada com 'tf.data.Dataset'**

## 🧠 Dados em Memória

Quando os dados de treino estão **em memória**, use:

- 'tf.data.Dataset.from_tensors'  
  - Agrupa todos os dados em **um único elemento** no dataset.

- 'tf.data.Dataset.from_tensor_slices'  
  - Cria **um elemento por linha** do tensor de entrada.

---

## 📄 Carregando CSV com 'TextLineDataset'

- 'TextLineDataset' carrega dados de **um ou mais arquivos de texto**.
- Cada linha se torna um elemento do dataset.

### Exemplo de uso:
'TextLineDataset(filenames, compression_type=None, num_parallel_reads=None)'

Parâmetros:
- **filenames**: Caminho(s) do(s) arquivo(s)
- **compression_type**: Tipo de compressão (ex: 'GZIP') – opcional
- **num_parallel_reads**: Número de leituras paralelas – opcional

---

## 🔄 Parsing de CSV com 'map'

- A função 'map' aplica uma função de parsing em **cada linha do dataset**.
- Essa função retorna um **dicionário** com os dados formatados (ex: features e labels).

---

## 🔁 Etapas de Pré-processamento

Após o parsing, aplique:

- **shuffle** – embaralha os dados (*apenas para treino*)
- **batch** – agrupa os dados em lotes para cada passo de treino
- **prefetch** – prepara o próximo lote enquanto o atual é processado

> ❗ **Importante:** Use uma condição para aplicar 'shuffle' **apenas se o dataset for de treino**.

---

## 📂 Trabalhando com Arquivos Fragmentados (Sharded)

Para lidar com grandes conjuntos de dados divididos em vários arquivos:

1. **'tf.data.Dataset.list_files'**  
   - Usa uma sintaxe com wildcard ('*') para localizar arquivos.
   - Retorna um dataset de nomes de arquivos.

2. **'TextLineDataset'**  
   - Lê as linhas de texto de cada arquivo.

3. **'flat_map'**  
   - Transforma cada nome de arquivo em várias linhas (transformação um-para-muitos).
   - Une todos os datasets resultantes em um único stream de dados.

4. **'map'**  
   - Aplica o algoritmo de parsing CSV linha por linha (transformação um-para-um).

---

## 🔁 Diferença entre 'map' e 'flat_map'

| Função        | Caso de uso                                 |
|---------------|----------------------------------------------|
| 'map'         | Transformações **um-para-um** (ex: uma linha → um exemplo) |
| 'flat_map'    | Transformações **um-para-muitos** (ex: um nome de arquivo → várias linhas) |

---

## 🚀 Melhorando Performance com 'prefetch'

Sem prefetch:

- A **CPU prepara** o primeiro lote
- A **GPU espera**, depois processa
- Só então a CPU prepara o próximo lote

Com **prefetch**:

- Enquanto a GPU está ocupada, a CPU já prepara o **próximo lote**
- Isso reduz o tempo ocioso dos dois lados

> ✅ Combine 'prefetch' com **leitura multi-thread e pré-processamento paralelo** para aproveitar ao máximo os recursos de CPU/GPU.

---

## 🎯 Conclusão

Agora você sabe como:

- Criar funções de entrada com datasets
- Treinar modelos com **datasets grandes fora da memória**
- Usar o API 'tf.data' para **transformações e otimização de desempenho**

> 📝 **Lembrete:** Aproveite toda a flexibilidade da API 'Dataset' para construir pipelines escaláveis e eficientes.

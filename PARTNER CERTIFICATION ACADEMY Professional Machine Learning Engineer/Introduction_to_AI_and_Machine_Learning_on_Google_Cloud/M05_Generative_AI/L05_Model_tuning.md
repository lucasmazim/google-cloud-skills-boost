# Model_tuning

# **Model Garden: Biblioteca de Modelos em Vertex AI**

## **Introdução**
Além do **Vertex AI Studio**, o **Model Garden** no Vertex AI oferece **acesso a uma ampla variedade de modelos de IA generativa**, incluindo modelos desenvolvidos pelo **Google**, por **terceiros** e de **código aberto**.  

Model Garden funciona como **uma biblioteca de modelos**, permitindo que você:
✔ **Pesquise e descubra modelos** 🔍  
✔ **Interaja com modelos do Google, de terceiros e open-source** 🤝  
✔ **Integre os modelos ao Vertex AI Studio para desenvolvimento e ajuste** 🚀  

Se o seu objetivo é **criar, treinar e ajustar modelos de IA generativa** em um ambiente completo, o **Vertex AI Studio** é uma ótima escolha.  
Por outro lado, se você **busca um modelo pronto para resolver um problema rapidamente**, o **Model Garden** é a melhor opção.

---

## **1. O Que o Model Garden Oferece?**
Cada modelo listado no **Model Garden** possui um **cartão de modelo (model card)**, que inclui:
✔ **Visão geral do modelo** 📌  
✔ **Casos de uso** 💡  
✔ **Documentação relevante** 📖  

Além disso, o Model Garden permite:
- **Iniciar projetos diretamente na interface do Vertex AI Studio**.  
- **Acessar código de exemplo e desenvolver via notebooks**.  
- **Encontrar modelos de diferentes categorias**.

---

## **2. Categorias de Modelos no Model Garden**
O **Model Garden** agrupa os modelos em **três grandes categorias**:

| Categoria | Descrição | Exemplos |
|-----------|------------|----------------|
| **Modelos Fundamentais (Foundation Models)** | Modelos **pré-treinados e multiuso** que podem ser ajustados para tarefas específicas. | Gemini, Imagen, Codey, Chirp |
| **Soluções Específicas para Tarefas** | Modelos **treinados para resolver problemas específicos** como análise de sentimentos e detecção de objetos. | APIs de Linguagem Natural, detecção de objetos, tradução de texto |
| **Modelos Fine-Tunable/Open-Source** | Modelos **de código aberto** que podem ser ajustados para personalização. | Modelos treináveis via **notebooks e pipelines** |

---

## **3. Como Encontrar um Modelo Ideal?**
Para **localizar o modelo certo**, você pode aplicar **três filtros de busca**:

| **Filtro** | **Descrição** |
|------------|--------------|
| **Modalidade** | Escolha entre **linguagem, visão, fala e outras categorias**. |
| **Tarefa** | Filtre por **geração, classificação, detecção**, entre outras. |
| **Recurso** | Busque modelos com **pipeline, notebook ou suporte para implantação rápida**. |

---

## **4. Fluxo de Trabalho no Model Garden**
O **Model Garden** simplifica o uso de modelos de IA generativa. Você pode:

✔ **Usar modelos fundamentais do Google** diretamente no **Vertex AI Studio** ou **via API**.  
✔ **Ajustar modelos no Vertex AI Studio** para personalização.  
✔ **Implantar modelos** e utilizá-los em produção.  
✔ **Personalizar modelos open-source** conforme suas necessidades.

---

## **5. Exemplo Prático: Usando um Modelo de Visão Computacional**
Imagine que você deseja aplicar **Visão Computacional** 🖼️.  

### **Passo 1: Filtrar Modelos no Model Garden**
1. Acesse **Model Garden** no Google Cloud.  
2. No filtro de **Modalidade**, selecione **Visão**.  
3. No filtro de **Tarefa**, escolha **Detecção**.

### **Passo 2: Escolher um Modelo**
✔ O **Owl-ViT (Owl Vision Transformer)** aparece na pesquisa.  
✔ Ele é um modelo **open-source**, baseado em **zero-shot learning**.  
✔ Ele permite **consultar imagens com descrições em texto**.

### **Passo 3: Explorar o Modelo**
- Clique no modelo para **ver o model card** com **mais detalhes**.  
- Como cientista de dados, você pode querer testar o modelo antes de implantá-lo.  

### **Passo 4: Abrir um Notebook no Colab**
- Clique em **Open Notebook** para abrir um **notebook do Colab** com código pré-configurado.  
- O notebook mostra como:
  1. **Implantar o modelo no Vertex AI**.
  2. **Enviar uma imagem para o endpoint**.
  3. **Receber uma legenda gerada pelo modelo**.

---

## **6. Exemplo de Estrutura JSONL para Ajuste de Modelo**
Se você precisar **ajustar um modelo com seus próprios dados**, pode usar um arquivo **JSONL** no **Cloud Storage**, onde cada linha contém:
- **Texto de entrada (prompt)**.
- **Texto de saída esperado (resposta do modelo)**.

'''json
{"input": "Traduza 'Hello' para o espanhol.", "output": "Hola"}
'''

---

## **7. Conclusão**
✔ **O Model Garden permite encontrar e testar modelos de IA generativa rapidamente**.  
✔ **Você pode escolher entre modelos do Google, open-source e de terceiros**.  
✔ **A integração com Vertex AI Studio facilita o ajuste e a implantação de modelos**.  
✔ **Exemplo prático: aplicar visão computacional com o modelo Owl-ViT**.  

Agora, explore o **Model Garden** e descubra como ele pode **acelerar seus projetos de IA generativa!** 🚀  

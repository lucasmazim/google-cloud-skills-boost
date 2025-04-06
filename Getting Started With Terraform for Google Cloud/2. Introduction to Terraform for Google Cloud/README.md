# Introduction to Terraform for Google Cloud

## Boas-Vindas
- **Título do módulo:** Introduction to Terraform for Google Cloud.
- Este módulo introdutório explora a necessidade empresarial do Terraform, começando pelos conceitos básicos.

---

## O Papel da Computação em Nuvem
- **Impacto da nuvem:**
  - Transformou a forma como empresas constroem, escalam e mantêm produtos tecnológicos.
  - **Provisionamento simplificado:** Com apenas alguns cliques, é possível provisionar infraestrutura de maneira produtiva.

---

## Questões a Serem Exploradas
- Por que usar **linhas de código** para provisionar infraestrutura?
- O que é **Infrastructure as Code (IaC)** e quais os seus benefícios?
- Qual é a relação entre **IaC** e **Terraform**?
- Como o Terraform transforma código em infraestrutura real?

---

## O Que Você Vai Aprender
### Visão Geral do IaC e do Terraform
- Introdução aos conceitos de **Infrastructure as Code (IaC)**, que fundamentam o Terraform.
- **Funcionalidades e benefícios do Terraform:**
  - Como ele pode ser usado como uma ferramenta de IaC no Google Cloud.

### Terraform em Ação
- Como o Terraform converte linhas de código em infraestrutura real no Google Cloud.

---

## Conclusão do Módulo
- O módulo termina com:
  - **Recapitulação dos tópicos abordados.**
  - **Quiz** para reforçar os conceitos.

---

## Pronto para Começar?
- Vamos mergulhar nos conceitos de IaC e Terraform para Google Cloud!



# Fundamentals of Infrastructure as Code (IaC) and Terraform

## Introdução ao Conceito Fundamental: IaC
- **Infrastructure as Code (IaC):** Permite usar uma linguagem de configuração para definir, provisionar e gerenciar infraestrutura.
- **Antes do IaC:** Administradores de sistemas configuravam manualmente servidores, redes e regras de firewall.
- **Com o IaC:** Declara-se o estado final desejado, e o IaC gerencia o provisionamento e a manutenção.

---

## A Influência do DevOps
- **DevOps:** Promove colaboração entre equipes de desenvolvimento e operações, automatizando a entrega de software e mudanças na infraestrutura.
- **Desafios enfrentados:**
  1. Alta demanda empresarial exige escalabilidade rápida da infraestrutura.
  2. Equipes enfrentam gargalos técnicos e operacionais ao gerenciar infraestruturas em grande escala.
  3. Colaboração e auditoria de mudanças na infraestrutura podem ser difíceis.
  4. Erros manuais tornam-se mais frequentes devido à complexidade e escala.

---

## Benefícios do IaC
### 1. Abordagem Declarativa
- Foco no **estado desejado** da infraestrutura em vez de detalhes sobre como alcançar esse estado.
  - **Exemplo:** Adicionar um rótulo de produção a uma sub-rede existente e criar duas novas sub-redes.
- O IaC cuida dos detalhes de implementação.
- Permite que qualquer pessoa compreenda o estado da infraestrutura sem depender de administradores.

### 2. Controle de Versão
- Infraestrutura gerenciada como **código-fonte de aplicativos.**
  - Histórico completo de versões e mudanças.
  - Capacidade de **reverter** para estados anteriores.
- **Colaboração facilitada:** 
  - Exemplo: Desenvolvedores podem abrir pull requests para alterações, como liberar portas em um firewall.
  - Discussões, revisões e auditorias tornam-se mais simples e colaborativas.

### 3. Histórico Auditável
- Registra **explicações** de mudanças na infraestrutura, proporcionando clareza ao longo do tempo.
- **Exemplo:** Comentários sobre alocações de sub-rede específicas para certas aplicações.

### 4. Pré-visualização de Mudanças
- Permite **prever impactos** em infraestrutura ao vivo antes de aplicar alterações.
- Detecta desvios e mantém robustez da infraestrutura.

### 5. Portabilidade e Reutilização
- Uso de módulos reutilizáveis para construir infraestrutura de forma consistente.
- **Google Cloud Foundation Toolkit:** Biblioteca de módulos reutilizáveis, documentados e testados.

---

## Diferença entre Provisionamento e Configuração
- **Provisionamento:** Automação para criar e gerenciar recursos na nuvem.
  - Exemplo: Criar uma instância de VM com IaC.
- **Configuração:** Automação para configurar o **sistema operacional** e software em VMs.
  - Exemplo: Configurar dependências de aplicações dentro de uma VM.

### Exemplos:
- **IaC:** Lançar um cluster GKE no Google Cloud.
- **Configuração:** Implantar contêineres dentro do cluster GKE.

---

## Por Que o IaC é Declarativo?
- **Modelos imperativos:** Definem ações específicas (ex.: "criar 5 servidores"), mas podem gerar duplicação ao repetir scripts.
- **Modelos declarativos:** Definem o estado desejado (ex.: "devem existir 5 servidores"), deixando o IaC corrigir desvios automaticamente.
  - Exemplo: Se um servidor for excluído acidentalmente, o IaC o recria automaticamente.

---

## Conclusão
- Adote ferramentas declarativas como o Terraform:
  - **Foco no "O QUE" e não no "COMO".**
  - Automatize a atualização da infraestrutura para que corresponda ao estado desejado.

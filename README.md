# **Ementa - Transcriptomics (scRNA-seq)**

## **Informações Gerais**

- **Nome da disciplina:** Transcriptomics (scRNA-seq)
- **Carga horária:** 45 horas
- **Duração:** 6 semanas
- **Dias e horários:** Terça e Quinta (4h/dia)
- **Início e término:** 09 de Abril - 16 de Maio
- **Modalidade:** Presencial
- **Nível:** Pós-graduação
- **Instrutor:** Andre Fonseca

## **Ementa**

A disciplina de **Single-Cell Transcriptomics** tem como objetivo apresentar os fundamentos teóricos e práticos da análise de transcriptômica de célula única (scRNA-seq), com ênfase na **análise de células T e descoberta de antígenos tumorais**. Serão abordados desde o processamento inicial dos dados até análises avançadas, com foco na aplicação prática e desenvolvimento de projetos individuais e em grupo. A disciplina será inteiramente baseada no **Seurat**, e o pré-processamento será realizado exclusivamente com **Cell Ranger**.

## **Objetivos**

1. Compreender os princípios e desafios da transcriptômica de célula única.
2. Explorar as principais plataformas de sequenciamento single-cell.
3. Realizar análises de qualidade, normalização e remoção de artefatos.
4. Aplicar métodos de clusterização, anotação celular e análise diferencial de expressão.
5. Integrar múltiplos datasets e diferentes modalidades de dados (scRNA-seq, scATAC-seq, scTCR-seq).
6. Inferir trajetórias celulares e estudar interações célula-célula.
7. Definir e desenvolver um projeto prático aplicando as metodologias aprendidas desde o início da disciplina, com ênfase em **células T e priorização de antígenos tumorais**.

## **Projeto da Disciplina**

O projeto será desenvolvido em grupos de até **três integrantes** e deverá abranger todas as etapas da análise de scRNA-seq, com foco em células T e descoberta de antígenos tumorais. O produto final do projeto deverá contemplar:

- **Scripts bem documentados em R**, seguindo boas práticas de codificação e reprodutibilidade.
- **Relatório científico** no formato acadêmico, incluindo metodologia detalhada, resultados e discussão.
- **Figuras e visualizações** geradas a partir das análises, destacando os principais achados.
- **Apresentação final** do workflow e resultados obtidos, explicando cada etapa e principais insights.

Cada integrante do grupo deverá assumir uma função específica e ser responsável por apresentar os itens no final da disciplina. O progresso do projeto será acompanhado ao longo das semanas, e cada integrante deverá demonstrar individualmente suas contribuições durante a execução do trabalho.

## **Conteúdo Programático**

### **Semana 1 - Introdução, História, Desenho Experimental e Definição do Projeto**

- Evolução da transcriptômica: de bulk RNA-seq a single-cell RNA-seq.
- Aplicações e impacto da tecnologia single-cell na imunologia e oncologia.
- Tecnologias e plataformas: 10x Genomics.
- Introdução ao **desenho experimental de projetos de single-cell**.
- Bases de dados públicas para estudos single-cell.
- Definição e planejamento do projeto final, com foco em células T e descoberta de antígenos tumorais.
- Pré-processamento de dados: do sequenciamento à matriz de contagem.
- Aula prática: Uso do **Cell Ranger**.

### **Semana 2 - Controle de Qualidade, Filtragem e Ambient RNA**

- Métricas de qualidade: porcentagem de genes mitocondriais, número de UMI’s, etc.
- Identificação e remoção de **doublets** (Scrublet, DoubletFinder).
- Normalização e escalonamento de dados.
- Introdução ao conceito de **ambient RNA** e estratégias de mitigação.
- Aula prática: Uso de **Seurat (R)** para QC e filtragem.
- Acompanhamento dos projetos: qualidade dos dados e primeiros filtros.

### **Semana 3 - Análise Exploratória, Clusterização e Identificação de Células Malignas**

- Redução de dimensionalidade: PCA, t-SNE, UMAP.
- Clusterização celular: KNN, Leiden, Louvain.
- Anotação de clusters baseada em bancos de dados públicos.
- Identificação de populações de células T e suas subpopulações.
- Introdução à **identificação de células malignas e análise de Copy Number Variation (CNV)**.
- Aula prática: Implementação no Seurat.
- Acompanhamento dos projetos: clusterização e anotação inicial das células T.

### **Semana 4 - Análises Diferenciais e Integração de Dados**

- Métodos de análise diferencial de expressão.
- Integração de múltiplos datasets: **SCTransform, Harmony**.
- Introdução à integração multimodal (scRNA-seq + scATAC-seq + scTCR-seq).
- Análise da expressão diferencial de antígenos tumorais e assinaturas de ativação de células T.
- Aula prática: Análise diferencial e integração no Seurat.
- Acompanhamento dos projetos: análise diferencial de antígenos tumorais.

### **Semana 5 - Inferência de Trajetórias e Interações Célula-Célula**

- Modelagem de pseudotempo: **Monocle**.
- Análise de interações célula-célula: **CellChat, NicheNet**.
- Inferência da ativação e exaustão de células T ao longo do pseudotempo.
- Aula prática: Inferência de trajetórias e comunicação celular.
- Acompanhamento dos projetos: modelagem de diferenciação de células T.

### **Semana 6 - Desenvolvimento e Apresentação do Projeto Aplicado**

- Aplicação das análises aprendidas em um conjunto de dados real.
- Interpretação de resultados e geração de figuras.
- Priorização de antígenos tumorais e caracterização da resposta imune.
- Apresentação e discussão dos projetos finais.

## **Metodologia**

- Aulas expositivas teóricas.
- Aulas práticas com análise de dados reais.
- Atividades individuais e em grupo.
- Desenvolvimento e acompanhamento de um projeto prático focado em **células T e descoberta de antígenos tumorais** ao longo da disciplina.

## **Recursos e Ferramentas**

- Linguagem: **R**.
- Pacotes: **Seurat, Monocle, Harmony, CellChat, NicheNet**.
- Infraestrutura computacional: Google Colab, HPC ou AWS.

## **Avaliação**

- Participação e exercícios práticos (20%)
- Relatórios semanais (30%)
- Projeto final (50%)

## **Bibliografia Recomendada**

- Luecken, M.D., & Theis, F.J. (2019). Current best practices in single-cell RNA-seq analysis: a tutorial. *Molecular Systems Biology*.
- Stuart, T., et al. (2019). Comprehensive Integration of Single-Cell Data. *Cell*.
- Butler, A., et al. (2018). Integrating single-cell transcriptomic data across different conditions, technologies, and species. *Nature Biotechnology*.

## **Contato**

- Email do professor(a): [andrefonseca@ufpa.br](mailto:andrefonseca@ufpa.br)
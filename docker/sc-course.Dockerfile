# Usa uma imagem R minimalista para Linux x86_64
FROM --platform=linux/x86_64 rocker/r-ver:4.3.1

# Define o mantenedor
LABEL maintainer="Andre Fonseca <oandrefonseca@gmail.com>"

# Define o fuso horário
ENV TZ=US/Central
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

# Instala dependências essenciais do sistema
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libhdf5-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala pacotes essenciais do R para scRNA-seq
RUN R -e "install.packages(c( \
    'tidyverse', 'rmarkdown', 'patchwork', 'R.utils', \
    'here', 'HGNChelper', 'ggrastr', 'hdf5r', 'remotes' \
    ), dependencies = TRUE, Ncpus = 8)"

# Instala pacotes do Bioconductor para análise de scRNA-seq
RUN R -e "BiocManager::install(c( \
    'Biobase', 'BiocGenerics', 'DelayedArray', 'SingleCellExperiment', \
    'SummarizedExperiment', 'limma', 'DESeq2', 'DropletUtils', 'scDblFinder' \
    ), ask = FALSE, Ncpus = 8)"

# Instala Monocle3 (inferência de trajetória)
RUN R -e "BiocManager::install('monocle3', ask = FALSE, Ncpus = 8)"

# Instala LIANA (análise de comunicação celular) e remove `remotes`
RUN R -e "remotes::install_github('saezlab/liana', dependencies = TRUE, Ncpus = 8)"

# Instala Seurat e Seurat Wrappers
RUN R -e "install.packages(c( \
    'Seurat', 'SeuratWrappers' \
    ), dependencies = TRUE, Ncpus = 8)"

# Define o diretório de trabalho
WORKDIR /home/rstudio

# Comando padrão ao rodar o container
CMD ["bash"]

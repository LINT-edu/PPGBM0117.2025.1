# Usa uma imagem R minimalista para Linux x86_64
FROM --platform=linux/x86_64 rocker/r-ver:4.3.1

# Define o mantenedor
LABEL maintainer="Andre Fonseca <oandrefonseca@gmail.com>"Deb

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
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libbz2-dev \
    liblzma-dev \
    libncurses5-dev

# Limpa cache do apt
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala pacotes essenciais do R
RUN Rscript -e "install.packages(c('tidyverse', 'rmarkdown', 'patchwork', 'R.utils', 'here', 'HGNChelper', 'ggrastr', 'hdf5r'), dependencies = TRUE, Ncpus = 8)"

# Atualiza o BiocManager antes de instalar pacotes do Bioconductor
RUN Rscript -e "install.packages('BiocManager', dependencies = TRUE, Ncpus = 8)"
RUN Rscript -e "BiocManager::install(version = '3.17', ask = FALSE)"

# Instala pacotes do Bioconductor em grupos menores
RUN Rscript -e "BiocManager::install(c('Biobase', 'BiocGenerics', 'S4Vectors'), ask = FALSE, Ncpus = 8)"
RUN Rscript -e "BiocManager::install(c('DelayedArray', 'SingleCellExperiment', 'SummarizedExperiment'), ask = FALSE, Ncpus = 8)"
RUN Rscript -e "BiocManager::install(c('batchelor', 'HDF5Array', 'terra', 'ggrastr'), ask = FALSE, Ncpus = 8)"
RUN Rscript -e "BiocManager::install(c('limma', 'lme4', 'DESeq2', 'DropletUtils', 'scDblFinder'), ask = FALSE, Ncpus = 8)"
RUN Rscript -e "BiocManager::install(c('scater', 'scran', 'scuttle'), ask = FALSE, Ncpus = 8)"

# Instala Seurat e Seurat Wrappers
RUN Rscript -e "install.packages(c('Seurat', 'SeuratWrappers'), dependencies = TRUE, Ncpus = 8)" 

# Instala Monocle3 (inferência de trajetória)
RUN Rscript -e "remotes::install_github('cole-trapnell-lab/monocle3')"

# Instala LIANA (análise de comunicação celular) e remove `remotes`
RUN Rscript -e "remotes::install_github('saezlab/liana', dependencies = TRUE, Ncpus = 8)"

# Define o diretório de trabalho
WORKDIR /home/rstudio

# Comando padrão ao rodar o container
CMD ["bash"]

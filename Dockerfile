FROM mooreryan/r_dev_base:0.2.0

LABEL maintainer="moorer@udel.edu"

ARG ncpus=4

RUN Rscript -e "if (!require('devtools')) install.packages('devtools', Ncpus = ${ncpus})"

# Bioconductor stuff
RUN Rscript -e 'if (!requireNamespace("BiocManager", quietly = TRUE)) { install.packages("BiocManager") }; BiocManager::install()'
RUN Rscript -e 'if (!requireNamespace("BiocManager", quietly = TRUE)) { install.packages("BiocManager") }; BiocManager::install("phyloseq")'

RUN Rscript -e "if (!require('breakaway')) devtools::install_github('adw96/breakaway')"

# Imports
RUN Rscript -e "if (!require('abind')) install.packages('abind', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('doParallel')) install.packages('doParallel', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('dplyr')) install.packages('dplyr', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('foreach')) install.packages('foreach', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('magrittr')) install.packages('magrittr', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('MASS')) install.packages('MASS', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('mvnfast')) install.packages('mvnfast', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('R.utils')) install.packages('R.utils', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('tibble')) install.packages('tibble', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('tidyr')) install.packages('tidyr', Ncpus = ${ncpus})"

# Suggests
RUN Rscript -e "if (!require('doSNOW')) install.packages('doSNOW', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('glasso')) install.packages('glasso', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('knitr')) install.packages('knitr', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('parallel')) install.packages('parallel', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('PDSCE')) install.packages('PDSCE', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('rmarkdown')) install.packages('rmarkdown', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('SpiecEasi')) devtools::install_github('zdk123/SpiecEasi')"
RUN Rscript -e "if (!require('testthat')) install.packages('testthat', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('ggplot2')) install.packages('ggplot2', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('R.rsp')) install.packages('R.rsp', Ncpus = ${ncpus})"

# Other stuff
RUN Rscript -e "if (!require('Rcpp')) install.packages('Rcpp', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('tictoc')) install.packages('tictoc', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('profvis')) install.packages('profvis', Ncpus = ${ncpus})"
RUN Rscript -e "if (!require('zCompositions')) install.packages('zCompositions', Ncpus = ${ncpus})"

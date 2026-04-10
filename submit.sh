#!/usr/bin/bash -l
#SBATCH --job-name=seurat
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=7G
#SBATCH --output=seurat.out

module load rstudio

Rscript -e "rmarkdown::render('seurat.Rmd', output_format = 'html_document')"

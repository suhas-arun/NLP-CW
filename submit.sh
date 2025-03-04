#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sa2021
# export PATH=/vol/bitbucket/${USER}/NLP-CW/venv/bin/:$PATH

source /vol/cuda/12.0.0/setup.sh
source /vol/bitbucket/sa2021/NLP-CW/venv/bin/activate
/usr/bin/nvidia-smi
uptime

cd /vol/bitbucket/sa2021/NLP-CW

jupyter nbconvert --execute --to notebook augmented_nlp_cw.ipynb
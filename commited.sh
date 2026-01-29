#!/bin/bash

# Número aleatório de commits (1-10)
num_commits=$((RANDOM % 10 + 1))

for i in $(seq 1 $num_commits); do
    # Gera uma fortune aleatória (ou uma mensagem aleatória)
    echo "Commit automático $(date)" > file.txt
    git add file.txt
    git commit --allow-empty -m "Auto commit #i - $(date)"
done



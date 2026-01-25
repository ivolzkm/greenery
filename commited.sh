#!/bin/bash

# Número aleatório de commits (1-10)
num_commits=$((RANDOM % 10 + 1))

for i in $(seq 1 $num_commits); do
    # Gera uma fortune aleatória (ou uma mensagem aleatória)
    echo "Commit automático $(date)" > file.txt
    git add file.txt
    git commit -m "Auto commit $(date)"
done

git push origin master
```

**file.txt** (arquivo que será modificado):
```
Arquivo para commits automáticos

#!/bin/bash

# Versiunea 2: scriptul primește ca argument un nume de fișier

if [ $# -eq 0 ]; then
    echo "Utilizare: $0 <fisier_hosts>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Eroare: fisierul '$1' nu exista."
    exit 1
fi

echo "Validare fisier: $1"
nl -ba "$1"

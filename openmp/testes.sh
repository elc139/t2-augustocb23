#!/bin/bash

echo 'Removendo result.txt...'
rm results.txt

echo .
echo .
echo '4000 repetições'
echo 'Testando para único núcleo com 4000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 1 1000000 4000
} done

echo .
echo 'Testando para dois núcleos com 4000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 2 500000 4000
} done

echo .
echo 'Testando para quatro núcleos com 4000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 4 250000 4000
} done

echo .
echo 'Testando para oito núcleos com 4000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 8 125000 4000
} done

echo .
echo .
echo '2000 repetições'
echo 'Testando para único núcleo com 2000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 1 1000000 2000
} done

echo .
echo 'Testando para dois núcleos com 2000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 2 500000 2000
} done

echo .
echo 'Testando para quatro núcleos com 2000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 4 250000 2000
} done

echo .
echo 'Testando para oito núcleos com 2000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 8 125000 2000
} done

echo .
echo .
echo '1000 repetições'
echo 'Testando para único núcleo com 1000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 1 1000000 1000
} done

echo .
echo 'Testando para dois núcleos com 1000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 2 500000 1000
} done

echo .
echo 'Testando para quatro núcleos com 1000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 4 250000 1000
} done

echo .
echo 'Testando para oito núcleos com 1000 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 8 125000 1000
} done

echo .
echo .
echo '500 repetições'
echo 'Testando para único núcleo com 500 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 1 1000000 500
} done

echo .
echo 'Testando para dois núcleos com 500 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 2 500000 500
} done

echo .
echo 'Testando para quatro núcleos com 500 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 4 250000 500
} done

echo .
echo 'Testando para oito núcleos com 500 repetições'
for i in $(seq 0 9); do {
    echo $i...
    ./omp_dotprod 8 125000 500
} done

<?php
// Link Exercicio: https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/php


function duplicateCount($text) {
    $upper = strtoupper($text); // Deixa todas maiusculas
    $letters = str_split($upper); // transforma em array
    $unique = array_count_values($letters); // conta repetidos
    $repeated = array_diff($unique, [1]); //deixa apenas > 1
    return count($repeated); //retorna contador
}
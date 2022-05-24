<?php 
// Link Exercício: https://www.codewars.com/kata/5264d2b162488dc400000001/train/php

$str = "This is rehtona test";
$str = "ylsuoireS this is the last one";

var_dump(spinWords($str));

function spinWords(string $str): string {
	$str_splited = explode(' ', $str);
	$array_base = $str_splited;
	for($i = 0; $i < count($str_splited); $i++) {
		if(strlen($str_splited[$i]) >= 5) {
			$array_base[$i] = strrev($str_splited[$i]);
		}
	}
	return implode(' ', $array_base);
}
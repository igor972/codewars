<?php 
// Link Exercício: https://www.codewars.com/kata/5264d2b162488dc400000001/train/php

$str = "This is rehtona test";
$str = "ylsuoireS this is the last one";

var_dump(spinWords($str));

function spinWords(string $str): string {
	$str_splited = explode(' ', $str);
	foreach($str_splited as &$word) {
		if(strlen($word) >= 5) {
			$word = strrev($word);
		}
	}
	return implode(' ', $str_splited);
}
<?php 
// Link Exercício: https://www.codewars.com/kata/550554fd08b86f84fe000a58/train/php


function inArray($array1, $array2) {
  $list = [];
  foreach($array1 as $word) {
    foreach($array2 as $text) {
      if(strpos(strtolower($text), strtolower($word)) !== false) {
        if(!in_array($word, $list)){
          $list[] = $word;
        }
      }
    }
  }

  sort($list, SORT_STRING );
  return $list;
}

$array1 = ["arp", "live", "strong"];
//$array1 =["xyz", "live", "strong"];

$array2 = ["lively", "alive", "harp", "sharp", "armstrong"];

var_dump(inArray($array1, $array2));
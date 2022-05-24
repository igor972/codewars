<?php

$arr = [1, 2, 3, 4, 5];

for($i=0; $i < count($arr); $i++) {
	if($arr[$i] >= 3) {
		$arr[$i] = 'foo';
	}	
}

var_dump($arr);
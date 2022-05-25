<?php

$arr = ['1.5.7', 'a', 'b', 'c', 'd'];


foreach($arr as $l) {
	if(strpos($l, '1.5') !== false) {
		echo $l;
	}
}

//var_dump($arr);
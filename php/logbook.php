<?php
// Diário de bordo PHP Codewars

// String em array, com separador:
explode(',', 'a,b,c,d,e');

// Contar quantidade de itens em um array:
count([1, 2, 3, 4]);

//Quantidade de letras em uma string:
strlen('string');

/*
posso passar valores por referencia, usando o ampersand(&), onde o valor passado para funcao pode ser alterado
*/
$arr = [1,2,3,4];
foreach($arr as &$num){
	if($num >= 3) {
		$num = 'foo';
	}
}
var_dump($arr);
// Se nao usasse o ampersand, a atribuicao $num = 'foo';, nao surtiria efeito no array usado, pois o foreach faz uma 'copia' para garantir que o array original seja preservado
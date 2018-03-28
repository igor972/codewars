// http://www.codewars.com/kata/54e6533c92449cc251001667/train/javascript

var uniqueInOrder = function(iterable){
  let letters = []
  for(var i = 0; i < iterable.length; i++) {
    if(!(letters[letters.length - 1] == iterable[i])) {
      letters.push(iterable[i]);
    }
  }

  return letters;
}

console.log(uniqueInOrder('AAAABBBCCDAABBB'));
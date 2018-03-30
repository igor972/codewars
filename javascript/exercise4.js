// https://www.codewars.com/kata/525f039017c7cd0e1a000a26/train/javascript
var palindromeChainLength = function(n) {
  if(n == reverseNumber(n)){
    return 0;
  }

  let count = 0;
  let finished = false;
  while(finished == false) {
    let new_num = n + reverseNumber(n);
    if(new_num == reverseNumber(new_num)){
      finished = true;
    }
    n = new_num;
    count++;
  }

  return count;
};

function reverseNumber(num) {
  let reversed_num = num.toString().split('').reverse().join('');
  return Number(reversed_num);
}

console.log(palindromeChainLength(87)); // 4
console.log(palindromeChainLength(89)); // 24
// https://www.codewars.com/kata/58223370aef9fc03fd000071/train/javascript
function dashatize(num) {
  if(num.toString() == 'NaN') {
    return num.toString();
  }
  let splited = num.toString().split('')
  if(splited[0] == '-') {
    splited = splited.splice(1, splited.length - 1)
  }
  let arr = validNumbers(splited);
  return arr.join('-');
}

function validNumbers(array) {
  let array_numbers = [];
  let tmp = '';

  for(let i = 0; i < array.length; i++) {
    if(Number(array[i]) % 2 == 0) {
      tmp += array[i];
    }else{
      if(tmp.length > 0) {
        array_numbers.push(tmp)
        tmp = '';
      }
      array_numbers.push(array[i]);
    }

    if(i == (array.length - 1) && tmp.length > 0) {
      array_numbers.push(tmp)
      tmp = '';
    }
  }

  return array_numbers;
}


console.log("2-7-4 => ", dashatize(274)) // "2-7-4"
console.log("5-3-1-1 => ", dashatize(5311)) // "5-3-1-1"
console.log("86-3-20 => ", dashatize(86320)) // "86-3-20"

console.log("NaN => ", dashatize(NaN)) // "NaN"

console.log("1 => ", dashatize(1)) // "1"
console.log("1 => ", dashatize(-1)) // "1"

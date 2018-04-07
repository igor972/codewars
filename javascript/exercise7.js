// https://www.codewars.com/kata/5966847f4025872c7d00015b/train/javascript
function averageString(str) {
  numbers = { 'zero': 0, 'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5, 'six': 6, 'seven': 7, 'eight': 8, 'nine': 9 }
  let splited = str.match(/\b\w+\b/g);
  if(splited == null || splited.length <= 0) {
    return 'n/a'
  }

  let count = 0;
  splited.forEach(function(elem, index){
    count += numbers[elem];
  })

  let ret = Math.floor(count / splited.length)
  let returned_number = getKey(numbers, ret)
  if(returned_number){
    return returned_number
  }else {
    return 'n/a'
  }
}

function getKey(object, value) {
  for(let item in object) {
    if(object[item] == value) {
      return item
    }
  }
}
console.log(averageString("five four")); // four
console.log(averageString(""));  // n/a
console.log(averageString("nine zero six odc7uu4gbc6q9awz5mi eight zero nine")); // n/a


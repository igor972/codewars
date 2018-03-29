// https://www.codewars.com/kata/555615a77ebc7c2c8a0000b8/train/javascript
function tickets(peopleInLine){
  let clerk = {
    25: 0,
    50: 0,
    100: 0
  }

  for(let i=0; i < peopleInLine.length; i++) {
    if(peopleInLine[i] == 25) {
      clerk[25] += 1
    }else if(peopleInLine[i] == 50){
      if(clerk[25] > 0) {
        clerk[25] -= 1;
        clerk[50] += 1;
      }else{
        return 'NO'
      }
    }else if(peopleInLine[i] == 100) {
      if(clerk[50] >= 1 && clerk[25] >= 1) {
        clerk[50] -= 1;
        clerk[25] -= 1;
        clerk[100] += 1;
      }else if(clerk[25] >= 3) {
        clerk[25] -= 3;
        clerk[100] += 1;
      }else{
        return 'NO'
      }
    }
  }

  return 'YES'
}


// console.log(tickets([25, 25, 50, 50])); // YES
// console.log(tickets([25,25,50,100,25,50,25,100,25,25,50,100])) // YES
console.log(tickets([25,25,50,100,25,25,50,100,25,50,25,100,25,100,25])); // NO
// console.log(tickets([25, 100])); // NO
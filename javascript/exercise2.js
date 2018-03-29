function findNb(m) {
  let count = 1;
  while(m > 1) {
    m -= Math.pow(count,3);
    count++;
  }
  if(m != 0) {
    return -1
  }
  return count - 1;
}
console.log(findNb(4183059834009)) // => 2022
console.log(findNb(135440716410000)) // => -1
console.log(findNb(135440716410000)) // => 4824
console.log(findNb(135440716410000)) // => 3568


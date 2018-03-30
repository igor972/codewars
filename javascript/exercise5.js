// http://www.codewars.com/kata/52685f7382004e774f0001f7/train/javascript

function humanReadable(seconds) {
  let time = {
    hours: 0,
    minutes: 0,
    seconds: 0
  }

  while(seconds > 0) {
    if(seconds >= 3600) {
      seconds -= 3600;
      time['hours'] += 1;
    }else if(seconds >= 60){
      seconds -= 60;
      time['minutes'] += 1;
    }else{
      time['seconds'] += seconds;
      seconds = 0;
    }
  }

  let arr = []
  arr.push(transformToTwoDigits(time['hours']))
  arr.push(transformToTwoDigits(time['minutes']))
  arr.push(transformToTwoDigits(time['seconds']))
  return arr.join(':');
}

function transformToTwoDigits(num) {
  let str = num.toString();
  let arr = []
  if(str.length < 2) {
    arr.push('0')
  }
  arr.push(str);
  return arr.join('');
}


console.log(humanReadable(0)) // '00:00:00'
console.log(humanReadable(359999)) // '00:01:00'
console.log(humanReadable(8000)) // 02:13:20
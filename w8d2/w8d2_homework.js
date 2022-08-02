// Phase I 

function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);   //--> 'in block'
  }
  console.log(x);   //--> 'in block'
}

//-->undefined, bcz, not call func


function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';  
    console.log(x);  //--> "in block"
  }
  console.log(x);  //--> "out of block"
}

//-->undefined, bcz, not call func


function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);  
  }
  console.log(x);  
}

// SyntaxError: Identifier 'x' has already been declared
// bcz const variable is immutable and can not be reassign!


function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);  //--> "in block"
  }
  console.log(x);   //--> "out of block"
}


function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

// syntax error


function madLib(x, y, z) {
  return "We shall ${x.toUpperCase()} the ${y.toUpperCase()} ${z.toUpperCase()}" ;
}


function isSubstring(searchString, subString) {
  return searchString.include(subString)
}

//Phase II

function fizzBuzz(array) {
  var newArr = [];

  for (let i = 0; i <= array.length; i++) {
    let ele = array[i]
    if (ele % 3 === 0 || ele % 5 === 0) {
      newArr.push(ele);
    }
  }

  return newArr;
}

// console.log (fizzBuzz([3,4,5,6,10]));  // [ 3, 5, 6, 10 ]


function isPrime(number) {
  if (number < 2) {
    return false;
  }

  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

// console.log(isPrime(3));  // true
// console.log(isPrime(4));  // false
// console.log(isPrime(5));  // true


function sumOfNPrimes(n) {
  let sum = 0;
  let counter = 0;
  let i = 0;

  while (counter < n) {
    if (isPrime(i)) {
      sum += i;
      counter += 1;
    }

    i ++;
  }

  return sum;
}


console.log(sumOfNPrimes(2))  // 5
console.log(sumOfNPrimes(4))  // 17
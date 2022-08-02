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

// console.log(isPrime(3));
// console.log(isPrime(4));
// console.log(isPrime(5));


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


console.log(sumOfNPrimes(2))
console.log(sumOfNPrimes(4))
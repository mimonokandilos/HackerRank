// implement a function stepCounter 
// 1 that takes a single paramter k 
// 2 returns a new object, representing a step counter with the intail value 
// of 0: ainncrement(): increments current value by k b decremennt:decrements 
// current value by k and c getvalue() returns current value 'use strict';

// issue: ran file and tried entering values but got no response.

'use strict';

const fs = require('fs');
const assert = require('assert');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
  inputString += inputStdin;
});

process.stdin.on('end', function() {
  inputString = inputString.split('\n');

  main();
});

function readLine() {
  return inputString[currentLine++];
}

const counter = (function counter() {
  let value = 0;
  return {
    getValue: function() {
      return value;
    },
    changeBy: function(k) {
      value += k;
    },
  }
})();
function getFixedCounter(k) {
    let value = 0;
    return {
        increment: function() {
            value +=k;
        },
        decrement: function() {
            value -=k;
        },
        getValue: function() {
            return value;
        },
        
    };
}
function main() {
  const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

  const val = parseInt(readLine().trim());

  const c = getFixedCounter(val);
  assert(!('changeBy' in c));

  const n = parseInt(readLine().trim());
  for (let i = 0; i < n; ++i) {
    const op = readLine().trim();
    if (op == '+') {
      c.increment();
    } else if (op == '-') {
      c.decrement();
    } else if (op === '?') {
      ws.write(`${c.getValue()}\n`);
    }
  }
  ws.end();
}


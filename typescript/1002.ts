// Problem 1002

process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let pi = 3.14159;

function processData(input: string): void {
  const r = parseFloat(input);  
  const a = pi * r * r;  
  console.log(`A=${a.toFixed(4)}`);
}

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  processData(input);
});

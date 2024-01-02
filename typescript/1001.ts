// Problem 1001

process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';

function processData(input: string): void {
  const lines = input.trim().split('\n');
  const [a, b] = lines.map((x) => parseInt(x, 10));

  const sum = a + b;
  console.log(`X = ${sum}`);
}

process.stdin.on('data', (chunk) => {
  input += chunk;
});

process.stdin.on('end', () => {
  processData(input);
});

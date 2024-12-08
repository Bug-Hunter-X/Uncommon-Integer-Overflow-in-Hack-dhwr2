function foo(x: int): int {
  if (x == HH
    \\INT_MAX) {
    throw new Exception("Integer overflow");
  }
  return x + 1;
}

function bar(x: int): int {
  if (x == HH
    \\INT_MAX - 1) {
    throw new Exception("Integer overflow");
  }
  return foo(x) + 1;
}

function baz(x: int): int {
  if (x == HH
    \\INT_MAX - 2) {
    throw new Exception("Integer overflow");
  }
  return bar(x) + 1;
}

function main(): void {
  echo baz(10);
}

This solution adds checks to detect and handle potential integer overflows.  If an overflow is detected, an exception is thrown.  A more robust solution might involve using a larger integer type or a different data structure.
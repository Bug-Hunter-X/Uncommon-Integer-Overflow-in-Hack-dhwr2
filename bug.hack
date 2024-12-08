function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) + 1;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  echo baz(10);
}

This code has a potential integer overflow bug. If x is large enough, then x + 1 could overflow.  The overflow could lead to unexpected behavior.

This is uncommon because most integer overflow bugs are caused by unintentional use of unsigned integers. This example shows that even with signed integers, there is a chance of an overflow if the value is large enough.
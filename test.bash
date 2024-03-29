#!/bin/bash
# SPDX-FileCopyrightText: 2024 Ryusei Matsuki
# SPDX-License-Identifier: BSD-3-clause

ng() {
  echo "NG at Line $1"
  res=1
}

res=0

### PRIME FACTORIZATION TEST ###
out=$(echo "12" | ./prime_factorization | tr -d '[:space:]') 
expected="[2, 2, 3]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "60" | ./prime_factorization | tr -d '[:space:]')
expected="[2, 2, 3, 5]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "97" | ./prime_factorization | tr -d '[:space:]')
expected="[97]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

out=$(echo "1" | ./prime_factorization | tr -d '[:space:]')
expected="[]"
echo "out: ${out}"
echo "expected: ${expected}"
[ "${out}" == "${expected}" ] || ng $LINENO

### ADD MORE TEST CASES IF NEEDED ###

[ "$res" == 1 ] && echo "OK" || echo "Test Failed"


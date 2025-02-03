#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Issei Takei <s20c1709gl@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違う
	res=1
}

res=0

out=$(seq 5 | ./PSD)
expected_output="mean: 3
population_variance: 2
population_standard_deviation: 1"
if [ "$(echo "$out" | tr -d '\n')" != "$expected_output" ]; then
	ng "$LINENO"

out=$(echo あ | ./PSD)
[ "$?" = 1 ]       ng "$LINENO"
[ "${out}" = "Please input a number" ]  ng "$LINENO"
[ "${out}" = "" ]  ng "$LINENO"

out=$(echo  | ./PSD)
[ "$?" = 1 ]       ng "$LINENO"
[ "${out}" = "Please input a number" ]  ng "$LINENO"
[ "${out}" = "" ]  ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit $res


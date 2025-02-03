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
fi


out=$(echo あ | ./PSD)
if [ "$?" = 1 ]; then
 	ng "$LINENO"
fi

if [ "${out}" = "Please input a number" ]; then
	ng "$LINENO"
fi

if [ "${out}" = "" ]; then
	ng "$LINENO"
fi


out=$(echo  | ./PSD)
if [ "$?" = 1 ]; then
	        ng "$LINENO"
fi

if [ "${out}" = "Please input a number" ];then
	        ng "$LINENO"
fi

if [ "${out}" = "" ]then
	        ng "$LINENO"
fi

if [ "$res" = 0 ]; then 
	echo OK
fi

exit $res


#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Issei Takei <s20c1709gl@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0

expected_output="BMI: 25.02Evaluation;  OverweightYour_weight: 85.67 Kgappropriate_weight: 75.34 Kg"

out=$(echo -e "185.05\n85.67" | ./BMI)
out=$(echo "$out" | tr -d '\n')
[ "$out" = "$expected_output" ] || ng "$LINENO"

out=$(echo -e "185.05\n85.67\n56" | ./BMI)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "Please enter only stature and weight" ] || ng "$LINENO"

out=$(echo あ | ./BMI)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "Please enter a number" ] || ng "$LINENO"

out=$(echo  | ./BMI)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "Please enter a number" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK

exit $res


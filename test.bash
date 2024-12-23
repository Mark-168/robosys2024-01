#!/bin/bash 
# SPDX-FileCopyrightText: 2024 Issei Takei <s20c1709gl@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違う
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

out=$(echo あ | ./plus)
[ "$?" = 1 ]       ng "$LINENO"
[ "${out}" = "" ]  ng "$LINENO"

out=$(echo  | ./plus)
[ "$?" = 1 ]       ng "$LINENO"
[ "${out}" = "" ]  ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit $res


#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Issei Takei <s20c1709gl@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0

out=$(seq 5 | ./multiply)
[ "${out}" = 120 ] || ng "$LINENO"

["$res" = 0 ] && echo OK

exit $res



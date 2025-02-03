# robosys2024-01

# PSDコマンド
![test](https://github.com/Mark-168/robosys2024-01/actions/workflows/test.yml/badge.svg)

入力した数値から

平均値(mean)

母分散(population_variance)

母標準偏差(population_standard_deviation) 

の３つを小数点以下を切り捨てて出力するコマンド

# 使用例
```
echo -e "1\n10.5\n100.5" | ./PSD
mean: 37
population_variance: 2010
population_standard_deviation: 44
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7〜3.10

## テスト環境
- Ubuntu 24.04 LTS

# license
- このソフトウェアパッケージは,3条項BSDライセンスの下,再頒布および使用が許可されます.
# Copyright
- © 2024 Issei Takei

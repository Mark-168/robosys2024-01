# robosys2024-01

# BMIコマンド
![test](https://github.com/Mark-168/robosys2024-01/actions/workflows/test.yml/badge.svg)


身長、体重の数値を入力入力することで以下４つを算出するコマンド

_BMI_(BMI)
_判定_(Evaluation)
_入力した体重_(Your_weight)
_適正体重_(appropriate_weight)

なお、小数点第2位以下を切り捨てて出力する

BMIの判定基準は以下の表通りに出力される

|BMI値|判定|
|----|----|
|16未満|痩せすぎ(Underweight)|
|16~16.99以下|痩せ(Thi)n|
|17.00〜18.49以下|痩せ気味(Slende)r|
|18.50〜24.99以下|普通体重(Normal weight)|
|25.00〜29.99以下|前肥満(Overweigh)t|
|30.00〜34.99以下|肥満1度(Obesity (Class 1))|
|35.00〜39.99以下|肥満2度(Obesity (Class 2))|
|40.00以上|肥満3度(Obesity (Class 3))|

## 使用例
```
$ echo -e "185.05\n85.67" | ./BMI
BMI: 25.02
Evaluation;  Overweight
Your_weight: 85.67 Kg
appropriate_weight: 75.34 Kg
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

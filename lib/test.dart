void main() {
  Map map1 = {
    "mohamed": 1,
    "ahmed": 2,
    3: {
      "ali": [1, 2, 3]
    }
  };
  print(map1[3]["ali"][0]);
}

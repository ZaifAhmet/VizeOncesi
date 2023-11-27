import 'dart:math';
import 'dart:io';

void main() {
  soru1 f = new soru1();
  String stdNo = "13003";
  String reversedStdNo = f.reverse_No(stdNo);
  print(reversedStdNo);
  //String prime = f.primeCal(100000);
  print("\n sayı :${f.primeNum(10000)}");

  soru2 c = new soru2(-270);
  print(
      "fahreneit : ${c.celciusToFahreneit()} \n kelvin : ${c.celciusToKelvin()} \n");

  print('Kaç adet sayı gireceksiniz?');
  int? n = int.parse(stdin.readLineSync()!);
/*
  List<double> sayilar = [];
  for (int i = 0; i < n; i++) {
    print('${i + 1}. sayıyı girin:');
    double sayi = double.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }

  soru3 s = new soru3(ilist);
  print("${s.standardDeviationCalculator()}");
  print("en buyuk ${s.findTheBiggestNum()}");
  
  double ortalama = sayilar.reduce((a, b) => a + b) / n;

  // Standart sapma hesapla
  double toplamKareFark = 0;
  for (double sayi in sayilar) {
    toplamKareFark += pow(sayi - ortalama, 2);
  }
  double standartSapma = sqrt(toplamKareFark / n);

  print('Girilen sayıların standart sapması: $standartSapma');
  */
}

class soru1 {
  String reversedNo = '';
  String reverse_No(String no) {
    for (int i = no.length - 1; i >= 0; i--) {
      reversedNo += no[i];
    }
    return reversedNo;
  }

  bool isprime(int no) {
    for (int i = 2; i <= no / 2; i++) {
      if (no % i == 0) return false;
    }
    return true;
  }

  String primeCal(int no) {
    String result = "2";
    for (int i = 3; i < no; i++) {
      result += isprime(i) ? ",$i" : "";
    }
    return result;
  }

  double primeNum(int no) {
    double result = 1;
    for (int i = 3; i < no; i++) {
      if (isprime(i)) {
        result++;
      }
    }
    result /= no;
    return result;
  }
}

class soru2 {
  var celcius;

  soru2(double celcius) {
    this.celcius = celcius < -273 ? 0 : celcius;
  }
  double celciusToKelvin() {
    double kelvin;
    kelvin = celcius + 273.15;
    return kelvin;
  }

  double celciusToFahreneit() {
    double fahreneit;
    fahreneit = celcius * (9 / 5) + 32;
    return fahreneit;
  }
}

class soru3 {
  List<double> arr;
  double sum = 0;
  double arrAverage = 0, varSum = 0, result = 0;
  soru3(this.arr);

  double standardDeviationCalculator() {
    for (var i in arr) {
      sum += i;
    }
    arrAverage = sum / arr.length;
    for (var i in arr) {
      varSum += pow((i - arrAverage), 2).toDouble();
    }
    result = varSum / (arr.length - 1);
    result = sqrt(result);
    return result;
  }

  double findTheBiggestNum() {
    double result = 0;

    for (var i in arr) {
      result = max(i, result);
    }
    return result;
  }
}

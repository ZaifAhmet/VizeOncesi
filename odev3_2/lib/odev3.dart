import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odev3_2/main.dart';

class odev3 extends StatefulWidget {
  const odev3({super.key});

  @override
  State<odev3> createState() => _odev3State();
}

class _odev3State extends State<odev3> {
  Color solColor = Colors.white;
  Color sagColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: solColor,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      'İsim : Ahmet Gökhan'
                      'Soyisim :Zaif\n'
                      'Numara :211213003',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: determineTextColor(solColor)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 300)),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        onPressed: () {
                          setState(() {
                            solColor = getRandomColor();
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white,
                            content: MyText(
                                metin: 'Sol ekranın yeni rengi :' +
                                    solColor.value
                                        .toRadixString(16)
                                        .substring(2)),
                          ));
                        },
                        child: MyText(metin: 'Sol buton'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: sagColor,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Malatya, Türkiye'nin Doğu Anadolu Bölgesi'nde yer alan bir şehirdir. Bu şehir, meşhur Malatya kayısısıyla tanınır ve Türkiye'nin önemli tarım bölgelerinden biridir.",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: determineTextColor(sagColor)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 250)),
                Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sagColor = getRandomColor();
                          });
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.white,
                              content: MyText(
                                  metin: 'Sağ ekranın yeni rengi :' +
                                      sagColor.value
                                          .toRadixString(16)
                                          .substring(2))));
                        },
                        child: MyText(metin: 'Sağ buton'));
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

Color determineTextColor(Color backgroundColor) {
  double luminance = backgroundColor.computeLuminance();
  return luminance > 0.5 ? Colors.black : Colors.white;
}

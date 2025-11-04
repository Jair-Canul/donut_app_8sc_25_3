import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});
  //List of donuts
  final List donutOnSale = [
    //donutFlavor, donutPrice, donutColor
    [
      'chocolate',
      '100',
      Colors.brown,
      "lib/images/chocolate_donut.png",
      'Starbucks',
    ],
    [
      'Stawbery',
      '89',
      Colors.red,
      "lib/images/strawberry_donut.png",
      'Krispy Kreme',
    ],
    [
      'Ice Creame',
      '95',
      Colors.blue,
      "lib/images/icecream_donut.png",
      "Dunky' Donut",
    ],
    ['Grape', '75', Colors.purple, "lib/images/grape_donut.png", 'Oxxo'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Se encarga de acomodar los elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        //Relación de aspecto
        childAspectRatio: 1 / 1.45,
      ),
      itemCount: donutOnSale.length,
      itemBuilder: (context, Index) {
        return DonutTile(
          donutFlavor: donutOnSale[Index][0],
          donutPrice: donutOnSale[Index][1],
          donutColor: donutOnSale[Index][2],
          donutImagePath: donutOnSale[Index][3],
          donutProvider: donutOnSale[Index][4],
        );
      },
    );
  }
}

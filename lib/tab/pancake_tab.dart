import 'package:donut_app_8sc_25_3/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PanCakeTab extends StatelessWidget {
  PanCakeTab({super.key});
  //List of donuts
  final List pancakeOnSale = [
    //
    ['Pikelets', '98', Colors.orange, "lib/images/p2.png", 'McDonal\'s'],
    [
      'World Famous Pancake',
      '80',
      Colors.brown,
      "lib/images/p1.png",
      'Mr Pancake',
    ],
    ['Blintz', '87', Colors.yellow, "lib/images/p3.png", "Burger King"],
    [
      'Pancake House',
      '100',
      Colors.red,
      "lib/images/p4.png",
      'American Pancake',
    ],
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
      itemCount: pancakeOnSale.length,
      itemBuilder: (context, Index) {
        return PanCakeTile(
          pancakeFlavor: pancakeOnSale[Index][0],
          pancakePrice: pancakeOnSale[Index][1],
          pancakeColor: pancakeOnSale[Index][2],
          pancakeImagePath: pancakeOnSale[Index][3],
          pancakeProvider: pancakeOnSale[Index][4],
        );
      },
    );
  }
}

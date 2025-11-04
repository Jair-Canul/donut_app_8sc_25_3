import 'package:donut_app_8sc_25_3/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});
  //List of donuts
  final List burgerOnSale = [
    //
    [
      'Chesse Burger',
      '75',
      Colors.orange,
      "lib/images/burger1.png",
      'McDonal\'s',
    ],
    [
      'Cowboy Burger',
      '89',
      Colors.brown,
      "lib/images/burger2.png",
      'Carl\'s Jr',
    ],
    [
      'Bacon Burger',
      '98',
      Colors.yellow,
      "lib/images/burger3.png",
      "Burger King",
    ],
    [
      'American Burger ',
      '120',
      Colors.red,
      "lib/images/burger4.png",
      'The Good Burger',
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
      itemCount: burgerOnSale.length,
      itemBuilder: (context, Index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[Index][0],
          burgerPrice: burgerOnSale[Index][1],
          burgerColor: burgerOnSale[Index][2],
          burgerImagePath: burgerOnSale[Index][3],
          burgerProvider: burgerOnSale[Index][4],
        );
      },
    );
  }
}

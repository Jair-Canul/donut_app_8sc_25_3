import 'package:donut_app_8sc_25_3/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  PizzaTab({super.key});
  //List of donuts
  final List pizzaOnSale = [
    //
    [
      'Pastor\'s Pizza',
      '110',
      Colors.orange,
      "lib/images/pizzapastor.png",
      'Pizza Ajedres',
    ],
    [
      'Hawaiian Pizza',
      '125',
      Colors.brown,
      "lib/images/phawaiana.png",
      'Danelo\'s Pizza',
    ],
    [
      'Champignon Pizza',
      '99',
      Colors.yellow,
      "lib/images/pchampiñones.png",
      "Los Trompos",
    ],
    [
      'Pepperoni Pizza',
      '89',
      Colors.red,
      "lib/images/ppeperoni.png",
      'Little Caesars',
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
      itemCount: pizzaOnSale.length,
      itemBuilder: (context, Index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[Index][0],
          pizzaPrice: pizzaOnSale[Index][1],
          pizzaColor: pizzaOnSale[Index][2],
          pizzaImagePath: pizzaOnSale[Index][3],
          pizzaProvider: pizzaOnSale[Index][4],
        );
      },
    );
  }
}

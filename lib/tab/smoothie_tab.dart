import 'package:donut_app_8sc_25_3/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});
  //List of donuts
  final List pizzaOnSale = [
    //
    ['Cherry Smoothie', '35', Colors.pink, "lib/images/s1.png", 'Smoothie Hut'],
    [
      'Orange Smoothie',
      '45',
      Colors.brown,
      "lib/images/s2.png",
      'House of Smoothies',
    ],
    [
      'Bannana Smoothie',
      '50',
      Colors.red,
      "lib/images/s3.png",
      "Smoothie King",
    ],
    [
      'Strawberry Smoothie',
      '70',
      Colors.purple,
      "lib/images/s4.png",
      'Tropical Smoothies',
    ],
    [
      'Strawberry Smoothie',
      '70',
      Colors.purple,
      "lib/images/s10.png",
      'Tropical Smoothies',
    ],
    [
      'Strawberry Smoothie',
      '70',
      Colors.purple,
      "lib/images/s8.png",
      'Tropical Smoothies',
    ],
    [
      'Strawberry Smoothie',
      '70',
      Colors.purple,
      "lib/images/s6.png",
      'Tropical Smoothies',
    ],
    [
      'Strawberry Smoothie',
      '70',
      Colors.purple,
      "lib/images/s9.png",
      'Tropical Smoothies',
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
        return SmoothieTile(
          smoothieFlavor: pizzaOnSale[Index][0],
          smoothiePrice: pizzaOnSale[Index][1],
          smoothieColor: pizzaOnSale[Index][2],
          smoothieImagePath: pizzaOnSale[Index][3],
          smoothieProvider: pizzaOnSale[Index][4],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class PanCakeTile extends StatelessWidget {
  final String
  pancakeFlavor; //donutFlavor sirve para almacenar el sabor de la dona
  final String
  pancakePrice; //donutPrice sirve para almacenar el precio de la dona
  final dynamic
  pancakeColor; //donutColor sirve para almacenar el color de la dona
  final String
  pancakeImagePath; //donutImagePath sirve para almacenar la ruta de la imagen de la dona
  final String
  pancakeProvider; //donutProvider sirve para almacenar el proveedor de la dona

  //constructor
  const PanCakeTile({
    super.key,
    required this.pancakeFlavor,
    required this.pancakePrice,
    required this.pancakeColor,
    required this.pancakeImagePath,
    required this.pancakeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50],
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pancakeColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child: Text(
                    "\$$pancakePrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pancakeColor[800],
                    ),
                  ),
                ),
              ],
            ),
            //imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(pancakeImagePath),
            ),
            //nombre de la dona
            Text(
              pancakeFlavor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            //tienda de la dona
            Text(pancakeProvider, style: TextStyle(color: Colors.grey[600])),
            //boton de agregar
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //favorito
                  Icon(Icons.favorite, color: Colors.pink[300]),
                  //agregar
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

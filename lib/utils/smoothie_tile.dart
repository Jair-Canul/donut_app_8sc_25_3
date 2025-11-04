import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor; //donutFlavor sirve para almacenar el sabor de la dona
  final String smoothiePrice; //donutPrice sirve para almacenar el precio de la dona
  final dynamic smoothieColor; //donutColor sirve para almacenar el color de la dona
  final String smoothieImagePath; //donutImagePath sirve para almacenar la ruta de la imagen de la dona
  final String smoothieProvider; //donutProvider sirve para almacenar el proveedor de la dona

  //constructor
  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.smoothieImagePath,
    required this.smoothieProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[100],
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
                    "\$$smoothiePrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: smoothieColor[800],
                    ),
                  ),
                ),
              ],
            ),
            //imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(smoothieImagePath),
            ),
            //nombre de la dona
            Text(
              smoothieFlavor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            //tienda de la dona
            Text(smoothieProvider, style: TextStyle(color: Colors.grey[600])),
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

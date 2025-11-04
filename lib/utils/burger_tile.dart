import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor; //donutFlavor sirve para almacenar el sabor de la dona
  final String burgerPrice;//donutPrice sirve para almacenar el precio de la dona
  final dynamic burgerColor;//donutColor sirve para almacenar el color de la dona
  final String burgerImagePath;//donutImagePath sirve para almacenar la ruta de la imagen de la dona
  final String burgerProvider;//donutProvider sirve para almacenar el proveedor de la dona

  //constructor
  const BurgerTile({
    super.key,
    required this.burgerFlavor,
    required this.burgerPrice,
    required this.burgerColor,
    required this.burgerImagePath,
    required this.burgerProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
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
                    "\$$burgerPrice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: burgerColor[800],
                    ),
                  ),
                ),
              ],
            ),
            //imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(burgerImagePath),
            ),
            //nombre de la dona
            Text(
              burgerFlavor,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            //tienda de la dona
            Text(burgerProvider, style: TextStyle(color: Colors.grey[600])),
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

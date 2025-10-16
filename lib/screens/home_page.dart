import 'package:donut_app_8sc_25_3/tab/burger_tab.dart';
import 'package:donut_app_8sc_25_3/tab/donut_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pancake_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pizza_tab.dart';
import 'package:donut_app_8sc_25_3/tab/smoothie_tab.dart';
import 'package:donut_app_8sc_25_3/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donut'),
    //burguer tab
    const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burguer'),
    //smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),
    //pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancake'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          ///icono
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          //icono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            //Texto principal
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to  ', style: TextStyle(fontSize: 24)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            //Pestaña o tabbar
            TabBar(tabs: myTabs),
            //Contenido de las pestañas
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PanCakeTab(),
                  PizzaTab(),
                ],
              ),
            ),
            //Carito
          ],
        ),
      ),
    );
  }
}

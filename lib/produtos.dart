import 'package:flutter/material.dart';
import 'bottom_appbar.dart';
import 'navbar.dart';
import 'home.dart';
import 'espacotop.dart';

class produtos extends StatelessWidget {
  const produtos({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(70), child: navbar()),
      bottomNavigationBar: bottomNavigationBar(),
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(25)),
          Text(
            'Produtos',
            style: TextStyle(fontSize: 30),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(30)),
              Image.asset(
                'assets/images/bolsa.jpg',
                height: 170,
              ),
              Image.asset(
                'assets/images/cadernos.png',
                height: 170,
                width: 250,
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 70, top: 10)),
              SizedBox(
                width: 230,
                child: Text(
                  ' Mochila Kipling',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Caderno',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 80, top: 5)),
              SizedBox(
                width: 220,
                child: Text(
                  "880,00 reais",
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  "23,90 reais",
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              )
            ],
          ),
          espaco(),
          espaco(),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 60, top: 10)),
              Image.asset(
                'assets/images/lapis.png',
                height: 170,
              ),
              Image.asset(
                'assets/images/caneta.jpg',
                height: 170,
                width: 250,
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 60)),
              SizedBox(
                width: 230,
                child: Text(
                  ' Lápis de Cor',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  'Canetas Stabilo',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 70, top: 5)),
              SizedBox(
                width: 230,
                child: Text(
                  "220,00 reais",
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  "124,99 reais",
                  style: TextStyle(fontSize: 15, color: Colors.green),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'navbar.dart';
import 'bottom_appbar.dart';
import 'espacotop.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(70), child: navbar()),
      bottomNavigationBar: bottomNavigationBar(),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(0)),
            Image.asset(
              'assets/images/art.png',
              width: 280,
            ),
            espaco(),
            SizedBox(
              height: 30,
            ),
            espaco(),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        50.0), // Define o raio do arredondamento
                    child: Image.asset(
                      'assets/images/bolsa.jpg',
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        50.0), // Define o raio do arredondamento
                    child: Image.asset(
                      'assets/images/cadernos.jpg',
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        50.0), // Define o raio do arredondamento
                    child: Image.asset(
                      'assets/images/escrita.jpg',
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 85, top: 10)),
                SizedBox(
                  width: 100,
                  child: Text('Bolsas', style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Cadernos',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  child: Text(
                    'Escrita',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

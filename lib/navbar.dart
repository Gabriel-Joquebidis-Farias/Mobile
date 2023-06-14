import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'main.dart';
import 'home.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        icon: const Icon(Icons.home),
      ),
      backgroundColor: Color(0xFFA76B12),
      title: const Text("Art Search",
          style: TextStyle(color: Colors.white, fontSize: 20)),
      actions: [
        GestureDetector(
          child: Icon(Icons.login_outlined, color: Colors.white),
          onTap: () {
            Navigator.pushNamed(context, '/cadastro');
          },
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

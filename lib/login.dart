import 'package:flutter/material.dart';
import 'bottom_appbar.dart';
import 'navbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _limparCampos() {
    _emailController.clear();
    _senhaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: navbar(),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              TextField(
                controller: _senhaController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFA71168)),
                onPressed: () {
                  // Lógica de autenticação
                  String email = _emailController.text;
                  String senha = _senhaController.text;
                  Navigator.pushNamed(context, '/home');
                  // Fazer algo com os dados de login, como realizar a autenticação

                  _limparCampos();
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

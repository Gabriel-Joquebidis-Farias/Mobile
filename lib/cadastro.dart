import 'package:flutter/material.dart';
import 'bottom_appbar.dart';
import 'navbar.dart';

class CombinedPage extends StatelessWidget {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();

  void _limparCampos() {
    _nomeController.clear();
    _emailController.clear();
    _senhaController.clear();
    _telefoneController.clear();
    _cpfController.clear();
    _dataNascimentoController.clear();
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
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _senhaController,
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _telefoneController,
                decoration: InputDecoration(labelText: 'Telefone'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _cpfController,
                decoration: InputDecoration(labelText: 'CPF'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _dataNascimentoController,
                decoration: InputDecoration(labelText: 'Data de Nascimento'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFA71168)),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFA71168)),
                onPressed: () {
                  _limparCampos();
                  // Lógica de cadastro aqui
                },
                child: Text(
                  'Cadastrar',
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

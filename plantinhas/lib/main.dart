import 'package:flutter/material.dart';
import 'package:plantinhas/home.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage()
    },
    theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0, // This removes the shadow from all App Bars.
        ),
        primarySwatch: Colors.green),
    home: LoginPage()));

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.grass,
                color: Colors.green,
                size: 100,
              ),
              Text(
                "PlantinhasAPP",
                style: TextStyle(
                    height: 5,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * .9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey.shade600),
                      hintText: "E-mail",
                      fillColor: Colors.grey.shade50),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey.shade600),
                        hintText: "Senha",
                        fillColor: Colors.grey.shade50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Text("Entrar"))),
                ),
                Container(
                    child: OutlinedButton(
                        onPressed: () {}, child: Text("Registrar")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

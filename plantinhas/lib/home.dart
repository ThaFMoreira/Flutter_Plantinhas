import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.transparent), home: HomePage()));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          Container(
              child: Row(
            children: [
              Flexible(
                  child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.green.shade100, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0),
                  ),
                  labelText: "Digite a plantinha",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ),
              )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.favorite_border, color: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.shopping_cart, color: Colors.green),
                  )
                ],
              )
            ],
          )),
          Divider(),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Ganhe"),
                    Text(
                      "15% de desconto",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Icon(
                  Icons.park,
                  size: 100,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Divider(),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: OutlinedButton(
                      onPressed: () {}, child: Text("Mais Vendidos")),
                ),
                OutlinedButton(onPressed: () {}, child: Text("Internos")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child:
                      OutlinedButton(onPressed: () {}, child: Text("Externos")),
                ),
                OutlinedButton(onPressed: () {}, child: Text("Jardim")),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            clipBehavior: Clip.hardEdge,
            shrinkWrap: true,
            childAspectRatio: ((MediaQuery.of(context).size.width / 2) /
                (MediaQuery.of(context).size.height / 2)),
            //childAspectRatio: (MediaQuery.of(context).size.height *2),
            children: [
              _buildCardPlanta("Suculenta", "externo", 10.00, 20),
              _buildCardPlanta("Cacto", "interno", 5.00, 5),
              _buildCardPlanta("Bonsai", "interno", 200.00, 15),
            ],
          ),
        ]),
      ),
    );
  }

  Card _buildCardPlanta(
      String nome, String ambiente, double valor, double desconto) {
    return Card(
      child: ListView(
        children: [
          Icon(
            Icons.nature,
            size: 100,
          ),
          ListTile(
            title: Text(nome,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ambiente),
                    IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.green),
                        onPressed: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("R\$ $valor",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      "-$desconto%",
                      style: TextStyle(color: Colors.red.shade500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

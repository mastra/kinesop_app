import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  Widget workCard(BuildContext context, String title, String cat, String rep) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: Container(
              color: Colors.blue,
            ),
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(cat),
              SizedBox(height: 4),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 4),
              Text(rep),
            ]),
          ),
          FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text("Ver video",
                      style: Theme.of(context).textTheme.bodyText2),
                  Icon(Icons.chevron_right)
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planilla de ejercicios"),
        centerTitle: true,
        backgroundColor: Colors.black26,
        elevation: 0,
      ),
      body: Column(
        //mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            color: Colors.black26,
            child: Center(
              child: Text(
                "Ejercicio 1",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                SizedBox(height: 20),
                FlatButton(
                  color: Colors.black12,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("DESCARGAR PLAN NUTRICIONAL"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                workCard(context, "Ejercicio", "Movilidad", "30seg"),
                workCard(context, "Ejercicio 2", "Movilidad", "30seg"),
                workCard(context, "Ejercicio 3", "Movilidad", "30seg"),
                workCard(context, "Estocada", "", "5x5"),
                workCard(context, "Estocada 2", "", "5x5"),
                workCard(context, "Estocada 3", "", "5x5"),
                workCard(context, "Tocar pies 15kg a los lados", "Flexibilidad",
                    "5x5"),
                workCard(context, "Tocar pies 15kg a los lados2",
                    "Flexibilidad", "5x5"),
                workCard(context, "Tocar pies 15kg a los lados 3",
                    "Flexibilidad", "5x5"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

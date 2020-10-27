import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  Widget workCard(BuildContext context, String title, String desc, String cat,
      String rep, int num) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset("images/ejercicio$num.png"),
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(height: 4),
                      Text(desc),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: Colors.black38,
                          ),
                          Text(rep),
                          SizedBox(
                            width: 80,
                          ),
                          Icon(
                            Icons.campaign_sharp,
                            color: Colors.black38,
                          ),
                          Text("x$num"),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ),
        Divider(height: 8, thickness: 8, color: Colors.black12)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Ejercicios",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Center(
                child: Text(
                  "Lunes 30/10",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            Divider(
              thickness: 4,
              color: Colors.black38,
              height: 4,
            ),
//                  SizedBox(height: 10),
            workCard(context, "Rana", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 1),
            workCard(context, "90/90Activo", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 2),
            workCard(context, "Estocada", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 3),
            workCard(context, "Tocar pies", "Texto explicadivo ejercicio", "",
                "5x5", 1),
            workCard(context, "Recuperacion", "Texto explicadivo ejercicio", "",
                "5x5", 3),
            workCard(context, "Estabilidad", "Texto explicadivo ejercicio", "",
                "5x5", 2),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kinesio/main.dart';
import 'package:get/get.dart';
import 'calendar_screen.dart';

class UserScreen extends StatelessWidget {
  Widget userData(BuildContext context, String title, String subTitle) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: heading5gray,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 1,
      thickness: 1,
      indent: 10,
      endIndent: 10,
    );
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Juan Perez",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "Tu especialista: Pedro",
                style: heading3gray,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    userData(context, "14-5-90", "Fecha naciomiento"),
                    userData(context, "80kg", "Peso"),
                    userData(context, "1.81 cm", "Altura"),
                  ],
                ),
              ),
              divider,
              Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 8),
                //color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  "Dolencia",
                  style: heading3gray,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                //color: Colors.yellow,
                width: double.infinity,
                child: Text("Sintoma de consulta",
                    style: Theme.of(context).textTheme.headline3),
              ),
              SizedBox(
                height: 30,
              ),
              divider,
              Container(
                padding: EdgeInsets.only(top: 10.0, bottom: 8),
                //color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  "Dias restantes para el alta:",
                  style: heading3gray,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                //color: Colors.yellow,
                width: double.infinity,
                child: Text("18 dias",
                    style: Theme.of(context).textTheme.headline3),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                color: Colors.black38,
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(child: Text("DESCARGAR PLAN NUTRICIONAL")),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.black38,
                onPressed: () {
                  Get.to(CalendarScreen());
                },
                child: Row(
                  children: [
                    Expanded(child: Text("VER PLANILLA DE EJERCICIOS")),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

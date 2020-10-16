import 'package:flutter/material.dart';
import 'package:kinesio/main.dart';

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
                color: Colors.yellow,
                width: double.infinity,
                child: Text(
                  "Dolencia",
                  style: heading3gray,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                color: Colors.yellow,
                width: double.infinity,
                child: Text("Sintoma de consulta",
                    style: Theme.of(context).textTheme.headline3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kinesio/main.dart';
//import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  final VoidCallback changeTab;

  UserScreen(this.changeTab);

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
    // const divider = Divider(
    //   height: 1,
    //   thickness: 1,
    //   indent: 10,
    //   endIndent: 10,
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 100,
                bottom: 10,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "Perfil",
                    style: TextStyle(fontSize: 14, color: Colors.black26),
                  ),
                  Icon(
                    Icons.person_pin,
                    color: Colors.black26,
                  ),
                  Text(
                    "Juan Perez",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("juanperez@gmail.com"),
                      SizedBox(width: 8),
                      Icon(
                        Icons.circle,
                        size: 10,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 8),
                      Text("CEL: 1233434343"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TU ESPECIALISTA: ",
                        style: heading5gray,
                      ),
                      Text(
                        "PEDRO",
                        style: heading5,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              height: 4,
              thickness: 4,
              indent: 0,
              endIndent: 0,
              color: Colors.black26,
            ),
            Container(
              padding: EdgeInsets.all(14),
              color: Colors.black12,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          userData(context, "14-5-90", "F. Naciomiento"),
                          userData(context, "80kg", "Peso"),
                          userData(context, "1.81 cm", "Altura"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Lesión",
                                style: TextStyle(color: Colors.black38),
                              ),
                              Text("Fractura scafoide",
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            color: Colors.black38,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Objetivo",
                                style: TextStyle(color: Colors.black38),
                              ),
                              Text("Recuperación 1 mes",
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.download_outlined),
                          Expanded(child: Text("DESCARGAR PLAN NUTRICIONAL")),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: () {
                        //Get.to(CalendarScreen());
                        changeTab();
                      },
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "VER PLANILLA DE EJERCICIOS",
                          )),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

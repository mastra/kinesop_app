import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinesio/main.dart';
import 'package:kinesio/screen/main_screen.dart';
//import 'package:kinesio/screen/user_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black12,
                  height: 160,
                  width: double.infinity,
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image.asset("images/logo.png"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "SapoZamboni",
                          style: heading4,
                        ),
                      ])),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Bienvenido",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text("Ingresá con tu mail y contraseña",
                    style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            Get.off(MainScreen());

                            //controller.login(emailController.text, passwordController.text);
                          },
                          child: Text("Entrar"),
                          textColor: Colors.white,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          //Get.to(Signup());
                        },
                        child: Text("Recuperar contraseña"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// return TextField(
//   ...
//  border: OutlineInputBorder(
//   borderSide: BorderSide(
//    color: Colors.red,
//     width: 5.0),
//     )
//   )
// )

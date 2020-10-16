import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinesio/screen/user_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenido",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text("Ingresá con tu mail y contraseña",
                  style: Theme.of(context).textTheme.headline5),
              SizedBox(
                height: 40,
              ),
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
                    Get.to(UserScreen());

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
                child: Text("Registro"),
              )
            ],
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

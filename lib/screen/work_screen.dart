import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  final VoidCallback nextTab;

  WorkScreen(this.nextTab);

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
            WorkCardWidget(1, "Rana", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 1),
            WorkCardWidget(2, "90/90Activo", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 2),
            WorkCardWidget(3, "Estocada", "Texto explicadivo ejercicio",
                "Movilidad", "30seg", 3),
            WorkCardWidget(
                4, "Tocar pies", "Texto explicadivo ejercicio", "", "5x5", 1),
            WorkCardWidget(
                5, "Recuperacion", "Texto explicadivo ejercicio", "", "5x5", 3),
            WorkCardWidget(
                6, "Estabilidad", "Texto explicadivo ejercicio", "", "5x5", 2),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    nextTab();
                  },
                  child: Text("Finalizar entrenamiento"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.black,
                  textColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class WorkCardWidget extends StatefulWidget {
  final int ikey;
  final String title;
  final String desc;
  final String cat;
  final String rep;
  final int num;
  bool done = false;
  WorkCardWidget(
      this.ikey, this.title, this.desc, this.cat, this.rep, this.num);
  @override
  _WorkCardWidgetState createState() => _WorkCardWidgetState();
}

class _WorkCardWidgetState extends State<WorkCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildActiveCard(context),
        widget.done
            ? Positioned.fill(
                child: Opacity(
                  opacity: 0.5, //!widget.done ? 0.0 : 0.75,
                  //child: Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                  // ),
                ),
              )
            : Container(),
      ],
    );
  }

  Widget buildActiveCard(BuildContext context) {
    return Dismissible(
      //confirmDismiss: (direction) async {
      //  return false;
      //},
      background: stackBehindDismiss(),
      key: ObjectKey(widget.ikey),
      confirmDismiss: (direction) {
        setState(() {
          widget.done = true;
        });

        return Future.value(false);
      },
      onDismissed: (direction) {},
      child: Column(
        children: [
          Container(
            //color: Color.fromARGB(100, 0, 0, 0),
            padding: const EdgeInsets.all(8.0),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(height: 4),
                        Text(widget.desc),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.timer_sharp,
                              color: Colors.black38,
                            ),
                            Text(widget.rep),
                            Expanded(
                                child: Container(
                              color: Colors.red,
                            )),
                            SizedBox(
                                // width: ,
                                ),
                            Icon(
                              Icons.campaign_sharp,
                              color: Colors.black38,
                            ),
                            Text("x${widget.num}"),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Divider(height: 8, thickness: 8, color: Colors.black12)
        ],
      ),
    );
  }

  Widget stackBehindDismiss() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.0),
      color: Colors.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 50,
      ),
    );
  }
}

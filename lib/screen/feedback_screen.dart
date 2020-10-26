import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _currentSliderValue = 20;
  int _rpe = 0;

  final Divider divider = Divider(
    height: 16,
    thickness: 2,
  );

  void _changeRPE(int value) {
    setState(() {
      _rpe = value;
    });
  }

  Widget rowRPE(String title, int value) {
    const TextStyle _textStyle = TextStyle(
      fontSize: 16,
    );
    return Column(children: [
      divider,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: _textStyle,
          ),
          Radio(
            activeColor: Colors.black,
            value: value,
            onChanged: _changeRPE,
            groupValue: _rpe,
          ),
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FEEDBACK",
          style: TextStyle(color: Colors.black26, fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 14, right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Volumen real",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("0"),
                    Expanded(
                      child: Slider(
                        activeColor: Colors.black,
                        inactiveColor: Colors.black38,
                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 50,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                    Text("60"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "RPE",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                rowRPE("Descanso", 0),
                rowRPE("Liviano", 10),
                rowRPE("Intenso", 20),
                rowRPE("Muy intenso", 30),
                divider,
                SizedBox(
                  height: 20,
                ),
                Text("Comentarios",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                        width: 1,
                      ),
                    ),
                  ),
                  maxLines: 6,
                  minLines: 1,
                  expands: false,
                  keyboardType: TextInputType.multiline,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Spacer(),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text("Enviar feedback"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

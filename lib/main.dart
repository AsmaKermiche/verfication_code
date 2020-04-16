import 'package:flutter/material.dart';
import 'pinbox.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PinBox Demo',
      home: new MyHomePage(title: 'PinBox Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<TextEditingController> controllers = <TextEditingController>[
    new TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xff739D84),
        body: Container(
            height: double.infinity,
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 30.0,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/texto.png"),
                      SizedBox(
                        height: 30.0,
                      ),
                        new Text("Entrez le code qui a été envoyer au numéro 0541506352", textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                        ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: pinBoxs(50.0, controllers, Color(0xfff2e9db), Color(0xffe8652d), context, false),
                      ),
                      SizedBox(height: 60,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        width: 250,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () => print('Verify Button Pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xFFF1B97A),
                          child: Text(
                            'VERIFIER',
                            style: TextStyle(
                              color: Color(0xFFE8652D),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text("Renvoyer le code ",
                      style: TextStyle(
                        color:Color(0xFFF1B97A),
                      )
                      )
                    ]
                )
            )
        )
    );
  }
}

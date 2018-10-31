import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFFf73308),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shisha Taxi'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
      new Row(

      mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new PopupMenuButton(
              onSelected: popupMenuSelected,
              itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<String>>[
                const PopupMenuItem( child: const Text("child 0"), value: "Value 0",),
                const PopupMenuItem( child: const Text("child 1"), value: "Value 1",),
                const PopupMenuItem( child: const Text("child 2"), value: "Value 2",),
              ],
            ),

            new SizedBox(
              width: 50.0,
              height: 80.0,
            ),

            new SizedBox(
              width: 192.0,
              height: 80.0,
              child:
              new Image.network(
                'Shisha_Lieferdienst.png',
                fit:BoxFit.fill,
              ),

            )
          ]

      ),

      new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              width: 80.0,
              height: 70.0,
            ),

            new SizedBox(
              width: 238.0,
              height: 35.0,
              child:
              new TextField(
                style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                    maxLength: 5,
                    decoration: new InputDecoration(labelText: "Tragen Sie Ihre PLZ ein"),
                    keyboardType: TextInputType.number,

              ),


            ),

            new SizedBox(
              width: 27.0,
              height: 21.0,
              child:
              new IconButton(
                icon: const Icon(Icons.search),
                onPressed:iconButtonPressed,
                iconSize: 30.0,
                color: const Color(0xFF000000),
              ),

            )
          ]

      ),

      new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Divider(color: const Color(0x5e5e5e)
            )]
            )
        new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Keine weiteren Einträge verfügbar.",
            style: new TextStyle(fontSize:12.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
          )
          ]
      ),

    ]),
    );
}
  void popupMenuSelected(String valueSelected){}

  void iconButtonPressed(){}

}
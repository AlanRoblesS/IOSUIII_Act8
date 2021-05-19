import 'package:flutter/material.dart';

void main() => runApp(MyLoginApp());

class MyLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PantallaIngreso(),
    ); //Fin de materialapp
  } //Fin de widget
} //Fin de clase myloginapp

class PantallaIngreso extends StatefulWidget {
  @override
  _PantallaIngresoState createState() => _PantallaIngresoState();
} //Fin de clase pantallaingreso

class _PantallaIngresoState extends State<PantallaIngreso> {
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Fin de widget[]
        title: Text('Login por Robles'),
      ), //Fin de appbar
      body: SafeArea(
          child: ListView(padding: EdgeInsets.symmetric(horizontal: 24.0), children: <Widget>[
        SizedBox(
          height: 80.0,
        ),
        Column(
          children: <Widget>[
            Image.asset('assets/login.png'),
            SizedBox(height: 20.0),
          ],
        ),
      ] //Fin de widget[]
              ) //Fin de listview
          ), //Fin de area segura
    ); //Fin scaffold
  } //Fin de widget build
} //Fin de clase _pantallaingresostate

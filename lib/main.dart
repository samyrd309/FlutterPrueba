//matApp es un snippet que nos permite construir toda la estructura mostrada abajo
import 'package:flutter/material.dart';
void main() => runApp(MyCard());

// Statleswidget son widget que usamos cuando este nunca va a cambiar
// Propiedades mas importantes del materialApp: title, home(representa laruta por defecto de nustras aplicaciones)
// Ctrl + space para saber todo lo que puedo poner en el widget
// Recordar siempre usar un SafeArea para que la app se ajuste
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/hitler.jpg'),
              ),
              Text('Adolf Hitler',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('Soy un dictador',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.white,
                  thickness: .9,

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  leading:
                  Icon(
                      Icons.phone,
                    color: Colors.black,

                  ),
                  title: Text(
                    '+1 829 906 1039',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  leading:
                  Icon(
                    Icons.email,
                    color: Colors.black,

                  ),
                  title: Text(
                    'adolfhitler@gmail.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          ),
          ),
        ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Assistente Virtual',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seja bem-vindo!'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: (){
            print('Menu button');
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.asset('../imagens/assv.png', width: 350,),
              ElevatedButton(
                child: Text('Acessar app'),
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ]),
      ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: (){
            print('Menu button');
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Mapa'),
                  ),
              ]
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue[600],
            ),
            title: Text("I'm the title"),
            subtitle: Text(
                "Here we are with the card description that i want everyone to read just to show u that this adjust automatically"),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            FlatButton(onPressed: null, child: Text("Cancelar")),
            FlatButton(onPressed: null, child: Text("Ok")),
          ])
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 100),
            alignment: Alignment.center,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.hdqwalls.com/download/anime-landscape-d5-2048x1152.jpg"),
            height: 300,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("No tengo idea de que poner"),
          ),
        ],
      ),
    );
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(2, 10)
            ),
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: card,
        ));
  }
}

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown[600],
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 100),
          placeholder: AssetImage("assets/jar-loading.gif"),
          image: NetworkImage("https://www.plymouth.edu/theclock/wp-content/uploads/sites/183/2019/03/stan-lee.png")),
      ),
    );
  }
}
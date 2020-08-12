import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.redwolf.in/image/cache/catalog/artwork-Images/face-masks/akatsuki-cloud-cotton-face-mask-artwork-128x128.png'),
              radius: 22.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('ER'),
              backgroundColor: Colors.blueGrey,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://cdn.donmai.us/sample/7b/2b/sample-7b2b964efb04754115b539beb9d201db.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ),
        
        
      ),
    );
  }
}
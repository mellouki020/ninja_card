import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: abdeCard(),
));
class abdeCard extends StatefulWidget {

  @override
  _abdeCardState createState() => _abdeCardState();
}

class _abdeCardState extends State<abdeCard> {

  int abdeLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Abde ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  (){
          setState(() {
            abdeLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/space-1.jpg'),
                radius: 40.0,
              ),
            ),

            Divider(
              height: 300.0,
              color: Colors.grey[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Chun-Li',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$abdeLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'abdelkrim_mellouki04.email.com',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
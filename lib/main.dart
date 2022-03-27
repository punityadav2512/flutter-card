import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  String _textString = 'Hack Your CGPA';

  @override
  void initState() {
    ninjaLevel = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Marksheet'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
            if (ninjaLevel >= 10) {
              ninjaLevel = 10;
            }
          });
          _doSomething();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red[400],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 80,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.purpleAccent,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Punit',
              style: TextStyle(
                color: Colors.purpleAccent,
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'College',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'IIITBH',
              style: TextStyle(
                color: Colors.purpleAccent,
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'CGPA',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.purpleAccent,
                letterSpacing: 2.0,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              _textString,
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 2.0,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'b520040@iiit-bh.ac.in',
                  style: TextStyle(
                    color: Colors.greenAccent[400],
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _doSomething() {
    setState(() {
      if (ninjaLevel >= 10) {
        _textString = 'Bas kar bhai 10 se jyada CGPA lega kya!!😂';
      }
    });
  }
}

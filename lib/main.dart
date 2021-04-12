import 'package:flutter/material.dart';
import 'ui_part.dart';
import 'constant.dart';

void main() {
  runApp(ConstFlutter());
}

class ConstFlutter extends StatelessWidget {
  final appTitle = 'Const App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        scaffoldBackgroundColor: Color(0xFF87CEFA),
      ),
      title: appTitle,
      home: HomePage(title: appTitle),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Const App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      width: 200.0,
                      height: 200.0,
                      image: AssetImage('images/pizza1.jpeg'),
                    ),
                  ), // child: UiParts(
                  //   // colors: lColor,
                  //   child: Image.asset('images/pizza1.jpeg'),
                  //   // cardChild: IconContetn,
                  // ),
                ),
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      width: 200.0,
                      height: 200.0,
                      image: AssetImage('images/burger.jpeg'),
                    ),
                  ),
                  // child: UiParts(
                  //   colors: lColor,
                  //   // cardChild: IconContetn,
                  // ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: UiParts(
                    colors: lColor,
                    // cardChild: IconContetn,
                  ),
                ),
                Expanded(
                  child: UiParts(
                    colors: lColor,
                    // onPress: ,
                    // cardChild: IconContetn,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: UiParts(
                    colors: lColor,
                    // cardChild: IconContetn,
                  ),
                ),
                Expanded(
                  child: UiParts(
                    colors: lColor,
                    // cardChild: IconContetn,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Items', style: TextStyle(),),
              decoration: BoxDecoration(color: Colors.black45),
            ),
            ListTile(
              title: Text('First page'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Second page'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Third page'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

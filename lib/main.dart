import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter -- Tugas Pertemuan 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text("BERITA TERBARU",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  width: 195.0,
                  height: 70.0,
                ),
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text("PERTANDINGAN HARI INI",
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  width: 195.0,
                  height: 70.0,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                    ),
                  ),
                  child: Expanded(
                      child: Image.network(
                          "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000")),
                ),
                Container(
                  //color: Colors.white,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                    ),
                  ),
                  child: Text("Costa Mendekat Ke Palmeiras",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Container(
                  color: Color.fromARGB(255, 226, 69, 253),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  // decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.purple,
                  // ),
                  // ),
                  child: Text("Transfer",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          fontFamily: "Sans Serif")),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      imageBox(),
                      textBoxx(),
                    ],
                  ),
                ),
              ],
            ),
            tanggal(),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      imageBox(),
                      textBoxx(),
                    ],
                  ),
                ),
              ],
            ),
            tanggal(),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      imageBox(),
                      textBoxx(),
                    ],
                  ),
                ),
              ],
            ),
            tanggal(),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      imageBox(),
                      textBoxx(),
                    ],
                  ),
                ),
              ],
            ),
            tanggal(),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      imageBox(),
                      textBoxx(),
                    ],
                  ),
                ),
              ],
            ),
            tanggal(),
          ],
        ),
      ),
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class tanggal extends StatelessWidget {
  const tanggal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            // padding: EdgeInsets.only(top: 40),
            // margin: EdgeInsets.only(top: 10),
            height: 50,
            width: 425,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            child: Text("BARCELONA Feb 13, 2021"),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 0,
                )),
          ),
        ],
      ),
    );
  }
}

class imageBox extends StatelessWidget {
  const imageBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 90,
      margin: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt4e7969bade7a9838/60dae7ca2e95e10f21ee4d4d/90fc0bacd0091994ffd8736162d591e806c6658a.jpg',
          ),
        ),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}

class textBoxx extends StatelessWidget {
  const textBoxx({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 90,
      margin: EdgeInsets.only(
        top: 10,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 5,
      ),
      child: Text(
          "Pique Bilang Wasit Untungkan Real Madrid, Ronald Koeman Tepok Jidat"),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}

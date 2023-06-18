import 'package:flutter/material.dart';
import 'package:js_neophormism_example/Neophormism/Neophormism.dart';

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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(241, 241, 241, 1.0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'JS Neophormism'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(241, 241, 241, 1.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(241, 241, 241, 1.0),
          title: Text(widget.title),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text("Neophormic effect with dynamic width "),
                SizedBox(
                  height: 20,
                ),
                NeomorphismContainer(
                    containerWidth: null,
                    inset: true,
                    color: null,
                    containerHeight: 240,
                    child: Icon(Icons.access_alarm_outlined)),
                SizedBox(
                  height: 20,
                ),
                Text("Neophormic effect with declared width and Height"),
                SizedBox(
                  height: 20,
                ),
                NeomorphismContainer(
                    containerWidth: 100,
                    inset: false,
                    color: null,
                    containerHeight: 100,
                    child: Icon(Icons.accessibility_new)),
                SizedBox(
                  height: 20,
                ),
                Text("Neophormic effect with dynamic width and Height"),
                SizedBox(
                  height: 20,
                ),
                NeomorphismContainer(
                    containerWidth: null,
                    inset: false,
                    color: null,
                    containerHeight: null,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("This is dynamic widht and heighr example"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("This is dynamic widht and heighr example"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("This is dynamic widht and heighr example"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("This is dynamic widht and heighr example"),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        )); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

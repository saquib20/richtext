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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rich Text'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello' ),
              TextSpan(text: 'World', style: TextStyle(
                fontSize: 34,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              )),
              TextSpan(
                text: 'Saquib',
              ),
              TextSpan(
                text: 'Khan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 43,
                  color: Colors.lime,
                  fontStyle: FontStyle.italic,
                  fontFamily: "TiltPrism-Regular"
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}

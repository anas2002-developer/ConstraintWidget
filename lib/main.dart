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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 300,
                maxWidth: 300,
                minHeight: 100,
                minWidth: 100,

              ),
              child: Container(
                child: Text("Aa", style: TextStyle(color: Colors.white),),
                color: Colors.indigoAccent,
              ),
            ),
            SizedBox(height: 50,),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 300,
                maxWidth: 300,
                minHeight: 100,
                minWidth: 100,

              ),
              child: Container(
                child: Text("Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(color: Colors.white),),
                color: Colors.indigoAccent,
              ),
            ),
          ],
        ),
      )
    );
  }
}

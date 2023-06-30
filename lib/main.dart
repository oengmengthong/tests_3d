import 'package:flutter/material.dart';
import 'package:tests_3d/ditredi.dart';
import 'package:tests_3d/flutter_cube.dart';
import 'package:tests_3d/flutter_ruby_obj.dart';
import 'package:tests_3d/obj_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
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
        title: Text("3D Views"),
      ),
      body: ListView(children: [
        ListTile(
          title: Text("Obj extension"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ObjExtensinFile())),
        ),
        ListTile(
          title: Text("Flutter Cude ext(obj, mtl, png))"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => FlutterCudePackage())),
        ),
        ListTile(
          title: Text("Flutter Cude ext(obj, mtl, png))"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => FlutterCudeRubyObj())),
        ),
        ListTile(
          title: Text("Ditredi Package"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => DitrediPackageTest())),
        )
      ]),
    );
  }
}

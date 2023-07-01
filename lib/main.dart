import 'package:flutter/material.dart';
import 'package:tests_3d/ditredi.dart';
import 'package:tests_3d/flutter_cube.dart';
import 'package:tests_3d/flutter_ruby_obj.dart';
import 'package:tests_3d/model_viewer_plus_test.dart';
import 'package:tests_3d/obj_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Views',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("3D Views"),
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
        ),
        ListTile(
          title: Text("Model Viewer Plus"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ModelViewerPlusTest())),
        )
      ]),
    );
  }
}

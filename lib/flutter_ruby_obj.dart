
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class FlutterCudeRubyObj extends StatefulWidget {
  const FlutterCudeRubyObj({super.key});

  @override
  State<FlutterCudeRubyObj> createState() => _FlutterCudeRubyObjState();
}

class _FlutterCudeRubyObjState extends State<FlutterCudeRubyObj>  with SingleTickerProviderStateMixin {
  void _onSceneCreated(Scene scene) {
    scene.camera.position.z = 10;
    scene.camera.target.y = 2;
    // scene.world.add(Object(scale: Vector3(10.0, 10.0, 10.0), fileName: 'assets/ruby_rose.obj'));
    scene.world.add(Object(scale: Vector3(10.0, 10.0, 10.0), fileName: 'assets/lowpolytree.obj'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Ruby Rose Obj"),
      ),
      body: Center(
        child: Cube(
          onSceneCreated: _onSceneCreated,
        ),
      ),
    );
  }
}
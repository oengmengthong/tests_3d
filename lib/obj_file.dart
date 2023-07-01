import 'package:flutter/material.dart';
import 'package:object_3d/object_3d.dart';

class ObjExtensinFile extends StatefulWidget {
  const ObjExtensinFile({super.key});

  @override
  State<ObjExtensinFile> createState() => _ObjExtensinFileState();
}

class _ObjExtensinFileState extends State<ObjExtensinFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Obj File'),
      ),
      body:  const Center(
        child: Object3D(
          size: Size(400.0, 400.0),
          color: Colors.white,
          object: "assets/Cargo_Container.obj",
        ),
      ),
    );
  }
}
import 'package:ditredi/ditredi.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class DitrediPackageTest extends StatefulWidget {
  const DitrediPackageTest({super.key});

  @override
  State<DitrediPackageTest> createState() => _DitrediPackageTestState();
}

class _DitrediPackageTestState extends State<DitrediPackageTest> {
  List<Face3D>? faces;

  _face() async {
    faces = await ObjParser().loadFromResources("assets/lowpolytree.obj");
    setState(() {});
  }

  final _controller = DiTreDiController(
    rotationX: -20,
    rotationY: 30,
    light: vector.Vector3(-0.5, -0.5, 0.5),
  );

  @override
  void initState() {
    _face();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ditredi Package"),
      ),
      body: faces == null
          ? CircularProgressIndicator()
          : Center(
              child: DiTreDiDraggable(
              controller: _controller,
              child: DiTreDi(
                figures: [
                  Mesh3D(faces!),
                ],
              ),
            )),
    );
  }
}

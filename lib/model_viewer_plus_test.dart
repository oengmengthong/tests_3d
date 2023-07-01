import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelViewerPlusTest extends StatefulWidget {
  const ModelViewerPlusTest({super.key});

  @override
  State<ModelViewerPlusTest> createState() => _ModelViewerPlusTestState();
}

class _ModelViewerPlusTestState extends State<ModelViewerPlusTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model Viewer Plus'),
      ),
      body: ModelViewer(
        backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        src: 'assets/Astronaut.glb', // a bundled asset file
        alt: "A 3D model of an astronaut",
        ar: true,
        arModes: ['scene-viewer', 'webxr', 'quick-look'],
        autoRotate: true,
        cameraControls: true,
        iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
        disableZoom: false,
      ),
    );
  }
}

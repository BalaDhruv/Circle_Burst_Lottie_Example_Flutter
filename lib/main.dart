import 'package:flutter/material.dart';

import 'package:flutter_lottie/flutter_lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CircleBurst(),
    );
  }
}

class CircleBurst extends StatefulWidget {
  @override
  _CircleBurstState createState() => _CircleBurstState();
}

class _CircleBurstState extends State<CircleBurst> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 150,
        height: 150,
        child: LottieView.fromFile(
          filePath: "assets/data.json",
          autoPlay: true,
          loop: true,
          onViewCreated: onViewCreatedFile,
        ),
      ),
    );
  }

  void onViewCreatedFile(LottieController controller) {
    // this.controller2 = controller;
    // newProgressStream.stream.listen((double progress) {
    //   this.controller2.setAnimationProgress(progress);
    // });
  }
}

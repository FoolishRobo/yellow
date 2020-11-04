import 'package:flutter/material.dart';
import 'package:yellow/camera_view.dart';
import 'package:yellow/video_list.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSuccessful;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSuccessful = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: VideoList(
              videoPlayerController: VideoPlayerController.network(
                'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
              ),
            ),
          ),
          CameraView(x: 10,y: MediaQuery.of(context).size.height-400,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_camera_flutter/services/camera.dart';
import 'package:shared_camera_flutter/services/viewer.dart';
import 'package:navigator/navigator.dart';


void main() {
  runApp(choose_viewer_or_camera());
}

class choose_viewer_or_camera extends StatelessWidget {
  const choose_viewer_or_camera({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green.shade200,
          appBar: (AppBar(
              title: Text(
                "반려동물 CCTV",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Noto_Sans_KR',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
          )
          ),
          body: Center(
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Viewer()

                        ),
                      );
                    },
                    child: Text(
                      '시청자',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(10.0),
                    height: 200,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const camera()
                        )
                        );
                      },
                      child: Text(
                        '카메라',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ),
    );
  }
}


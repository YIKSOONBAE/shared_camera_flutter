import 'package:flutter/material.dart';
import 'package:navigator/navigator.dart';


class camera extends StatelessWidget {
  const camera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              child: (
                  Icon (
                    Icons.arrow_back_ios,
                  color: Colors.green,
                  )

              ),
            ),
          ),
          Container(
            child: (
                Text('카메라 버튼을 눌렀습니다')
            ),
          ),
        ],
      ),
    );
  }
}

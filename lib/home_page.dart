import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  MediaQueryData? mqData;

  @override
  Widget build(BuildContext context) {

    mqData = MediaQuery.of(context);
    print("W: ${mqData!.size.width}");
    print("H: ${mqData!.size.height}");

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: mqData!.orientation==Orientation.landscape ? Center(
        child: Row(
          children: [
            buildUIOne(),
            buildUITwo(),
          ],
        ),
      ) : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildUIOne(),
            buildUITwo(),
          ],
        ),
      )
    );
  }

  Widget buildUIOne(){
    return Container(
      width: mqData!.size.width*0.5,
      height: mqData!.size.height*0.3,
      color: Colors.blue,
    );
  }

  Widget buildUITwo(){
    return Container(
      width: mqData!.size.width*0.5,
      height: mqData!.size.height*0.3,
      color: Colors.red,
    );
  }
}

///Center(
//         child: Container(
//           width: mqData!.size.width*0.5,
//           height: mqData!.size.height*0.3,
//           color: Colors.blue,
//         ),
//       ),

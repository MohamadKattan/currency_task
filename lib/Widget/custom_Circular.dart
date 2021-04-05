import 'package:flutter/material.dart';

class CustomCircular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Opacity(opacity: 0.30,child: Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(backgroundColor: Colors.redAccent[700],strokeWidth: 2.0,),
          SizedBox(height: 6.0,),
          Text("Loading...",style: TextStyle(color: Colors.white,fontSize: 16.0),),
        ],
      ),
    )),
  );
  }
}
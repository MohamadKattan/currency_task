import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final String currency;
  final String date;
  final String base;
  CustomListTitle({this.currency, this.date, this.base});
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 15 / 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 16.0,
                  spreadRadius: 0.6,
                  offset: Offset(0.7, 0.7))
            ],
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left:16.0),
              child: Text(base,style: TextStyle(color: Colors.grey[700],fontSize: 20.0,fontWeight:FontWeight.w400)),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(currency,style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight:FontWeight.bold),)
                  ],
                ),
                Text(date,style: TextStyle(color: Colors.grey[700],fontSize: 20.0,fontWeight:FontWeight.w400)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

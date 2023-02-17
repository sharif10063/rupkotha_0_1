import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ক্যাটাগরি",
              style: TextStyle(
                  fontFamily: "Kalpurush",
                  fontSize: 30,
                  fontWeight: FontWeight.w600)),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          // scrollDirection: ,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 347,
              height: 164.63,
              margin: EdgeInsets.only(top: 147, left: 388),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}

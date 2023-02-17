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
              // color:
              width: 347,
              height: 164.63,
              padding: EdgeInsets.all(10),
              child: Card(
                color: Color(0xffd9ecfd),
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            '/images/categorys/card1.png',
                            fit: BoxFit.cover,
                            // width: double.infinity,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                    Text("রুপকথার গল্প",
                        style: TextStyle(
                            fontFamily: "Kalpurush",
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}

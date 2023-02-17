import 'package:flutter/material.dart';
import 'package:rupkotha01/menu_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  // final theme = ThemeData(
  //     primarySwatch: Color(Color(0xffff5100)),
  //     primaryColor: Colors.transparent,
  //     backgroundColor: Colors.transparent,
  //     splashColor: Color(0xED1E25));

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: const Color(0xffff3b00),
        // primarySwatch: Color(0xfffbf6f6),
        primaryColor: Colors.white,
        backgroundColor: Colors.transparent,
        splashColor: Color(0xffff3b00),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color(0xff414040)),
          titleTextStyle: TextStyle(color: Color(0xff414040)),
          centerTitle: true,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isPressed = false;
  final gradient = LinearGradient(
      begin: Alignment(-1, 6.123234262925839e-17),
      end: Alignment(6.123234262925839e-17, 1),
      colors: [
        Color.fromRGBO(237, 30, 37, 1),
        Color.fromRGBO(255, 115, 62, 1)
      ]);

  List<String> imagePathsFvrt = [
    'images/b.png',
    'images/c.png',
    'images/d.png',
    'images/e.png',
    'images/g.png',
    'images/h.png',
  ]; // Add more image paths as needed

  List<String> imagePathsRcmnded = [
    'images/e.png',
    'images/g.png',
    'images/h.png',
    'images/b.png',
    'images/c.png',
    'images/d.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   gradient: gradient,
            // ),
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            child: Center(
              child: Text(
                "প্রিয় বই",
                style: TextStyle(
                  fontFamily: "Kalpurush",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
                onTap: () {
                  // Perform some action
                  debugPrint("Amelia Erahart");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                const AssetImage('images/amelia_earhart.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "প্রিয় বই",
                  style: TextStyle(
                    fontFamily: "Kalpurush",
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("Favourite Books");
                  },
                  child: Text("সবগুলো দেখ",
                      style: TextStyle(
                        fontFamily: "Kalpurush",
                        fontSize: 12,
                        color: Color(0xff444444),
                      )),
                ),
              ],
            ),
          ), //container

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(imagePathsFvrt.length, (index) {
                return InkWell(
                    onTap: () {
                      // Perform some action
                      debugPrint("Book Opens");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 105,
                            width: 74,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imagePathsFvrt[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
              }),
            ),
          ),

          Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "আপনার জন্য প্রস্তাবিত",
                  style: TextStyle(
                    fontFamily: "Kalpurush",
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("Favourite Books");
                  },
                  child: Text("সবগুলো দেখ",
                      style: TextStyle(
                        fontFamily: "Kalpurush",
                        fontSize: 12,
                        color: Color(0xff444444),
                      )),
                ),
              ],
            ),
          ), //container

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(imagePathsRcmnded.length, (index) {
                return InkWell(
                    onTap: () {
                      // Perform some action
                      debugPrint("Book Opens");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 105,
                            width: 74,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(imagePathsRcmnded[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
              }),
            ),
          )
        ],
      ),

      // Bottom Navigation Bar Widget
      bottomNavigationBar: BottomAppBar(
        // Shape of the Bottom Navigation Bar
        // color: Colors.orange[900],

        shape: CircularNotchedRectangle(),
        // Container widget inside the Bottom Navigation Bar
        child: Container(
          // Height of the Container 0xffcd4902
          height: 60.0,
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),

          child: Row(
            // Main axis alignment of the Row widget
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // List of IconButton widgets inside the Row widget
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home_outlined, size: 27),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.language_outlined, size: 27),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search_outlined, size: 27),
                color: Colors.white,
                onPressed: () {},
              ),
              // Text("প্রিয় বই",
              //     style: TextStyle(
              //       fontFamily: "Kalpurush",
              //       fontSize: 19,
              //     ))
            ],
          ),
        ),
      ),

      // Floating Action Button Widget
      floatingActionButton: FloatingActionButton(
        // onPressed callback for the button
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("শুভ রাত্রি",
                                  style: TextStyle(
                                    fontFamily: "Kalpurush",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  )),
                              Text(
                                "শরীফ মোহাম্মদ",
                                style: TextStyle(
                                  fontFamily: "Kalpursh",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffb2d9f9),
                          ),
                          child: Image.asset('images/pro.png'),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(Icons.expand_more),
                        ),
                        // onTap: () {},
                      ),
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "হোম",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.home_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "ড্যাশবোর্ড",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.dashboard_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "প্রিয় বই",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.favorite_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "ক্যাটাগরি",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.category_outlined,
                        size: 26,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return CategoryPage();
                        }));
                      },
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "নটিফিকেশন",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.notifications_active_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "রিকমেনডেশান",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.recommend_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "সেটিংস",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.settings_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "সন্তানের অ্যাাকাউন্ট",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.contacts_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      title: Text(
                        "লগ আউট",
                        style: TextStyle(
                          fontFamily: "Kalpursh",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(
                        Icons.logout_outlined,
                        size: 26,
                      ),
                      onTap: () {},
                    ),
                  ]),
                ),
              );
            },
          );
        },
        // Icon inside the button
        child: Icon(Icons.favorite_outline, color: Colors.white),
        backgroundColor: Colors.orange[900],
      ),
      // Location of the Floating Action Button
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

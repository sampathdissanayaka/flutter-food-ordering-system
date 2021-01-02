import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_order_app/Style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'mont'
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today's Special", style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: greenBtn
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text("CART",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    ],

                ),
                SizedBox(height: 10,),
                Text("Find out what's cooking today!", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: 350,
                        padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: blue,
                          boxShadow: [BoxShadow(spreadRadius: 0, offset: Offset(0,10), blurRadius: 0, color: blue.withOpacity(0.5))]
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("asset/images/food1.png"),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text("Yoshimasa Sushi", style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 17,
                                ),

                              Text("250 Ratings", style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Lorem ipsum is a dummy text used for printing", style: TextStyle(
                              color: Colors.white,
                              fontSize: 13
                            ),),
                          ],
                        ) ,

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

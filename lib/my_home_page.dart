/* This is home page. We will show this page on as a main page*/

import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff12c2e9), Color(0xfff64f59)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "mayple",
            style: TextStyle(
                 fontWeight: FontWeight.bold, fontSize: 30,
            foreground: Paint()..shader = linearGradient),

          ),
          leading: Icon(
            Icons.drag_handle,
            color: Colors.red,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.dehaze,
                color: Colors.red,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your industry's top vetted marketing experts",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
                softWrap: true,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  padding: EdgeInsets.only(top: 4.0, bottom: 8.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "assets/images/main_image.jpg",
                  )),
              Text(
                "Stefan Garlson",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
              Row(
                children: [
                  Text(
                    "4.8",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ratingTestWidget(),
                  ),

                  SizedBox(
                    width: 130,
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.redAccent, // button color
                      child: InkWell(
                        splashColor: Colors.blueAccent, // inkwell color
                        child: SizedBox(width:40, height: 40, child: Icon(Icons.add,color: Colors.white,)),
                        onTap: () {},
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(

                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffFBF6F6))
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("MARKETING EXPERTISE",style:TextStyle(color: Colors.cyan,fontSize: 10),),
                            Text("Tech Expert")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffFBF6F6))
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Experience",style:TextStyle(color: Colors.cyan),),
                            Text("8 years")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffFBF6F6))
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("MARKETING EXPERTISE",style:TextStyle(color: Colors.cyan,fontSize: 10),),
                          Text("Tech Expert")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffFBF6F6))
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Experience",style:TextStyle(color: Colors.cyan),),
                          Text("8 years")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

       // floatingActionButtonLocation: FloatingActionButtonLocation.,
     /*   floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.redAccent,


        ),*/
      ),
    );
  }
}

//This widget is just for rating

Widget ratingTestWidget() {
  double rating = 4.8;
  int starCount = 5;

  return StarRating(
    size: 25.0,
    rating: rating,
    color: Colors.redAccent,
    borderColor: Colors.grey,
    starCount: starCount,
    onRatingChanged: (rating) {},
  );
}

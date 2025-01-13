import 'package:flutter/material.dart';
import 'Basic_Nutrition_Lesson.dart';
import 'home_page.dart';

class findGym extends StatelessWidget {
  const findGym({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Center(
            child: Text(
              'Basic Nutrition',
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
                 context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.photo),
              color: Colors.transparent,
              iconSize: 30.0,
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => personal()));
              },
            ),
          ],
        ),

        body: Stack(
          children: <Widget>[

            Center(
                child: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[


                                SizedBox(
                                  width: 10,
                                ),

                                SizedBox(
                                  width: 100,
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),

                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Center(child: Image.asset('assets/java1.png', scale: 1)),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Text("Basic Nutrition",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),





                          SizedBox(
                            height: 15,
                          ),


                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      OutlinedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
                                          side: MaterialStateProperty.resolveWith<BorderSide>(
                                                  (Set<MaterialState> states) {
                                                final Color color = states.contains(MaterialState.pressed)
                                                    ? Colors.blue
                                                    : Colors.green;
                                                return BorderSide(color: color, width: 2);
                                              }
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => Basic_Nutrition()));


                                        },
                                        child: Text('                                  Get Start                                   ',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // OutlinedButton(
                                //   child: Text(
                                //     "Lessons",
                                //     style: TextStyle(
                                //       color: Colors.black,
                                //     ),
                                //   ),
                                //   onPressed: () {
                                //     // Navigator.push(
                                //     //     context, MaterialPageRoute(builder: (context) => MyCourse2()));
                                //   },
                                // ),
                                // OutlinedButton(
                                //   child: Text(
                                //     "Similar Courses",
                                //     style: TextStyle(
                                //       color: Colors.black,
                                //     ),
                                //   ),
                                //   onPressed: () {},
                                // ),



                          SizedBox(
                            height: 20,
                          ),

                          Text("What will I learn ?",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Basic nutrition refers to the foundational principles of consuming essential nutrients necessary for optimal health and well-being. It encompasses the intake of macronutrients such as carbohydrates, proteins, and fats, as well as micronutrients including vitamins and minerals. A balanced diet rich in whole foods such as fruits, vegetables, lean proteins, whole grains, and healthy fats is key to meeting nutritional needs. Proper hydration is also crucial for maintaining bodily functions. Basic nutrition forms the cornerstone of a healthy lifestyle, supporting growth, development, and overall vitality while reducing the risk of chronic diseases.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)
                          ),




                          SizedBox(
                            height: 15,
                          ),
                          Text("Ratings and Reviews",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Text("4.5",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),

                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),





                          Center(
                            child: TextButton(

                              onPressed: () {},
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue, // Background Color
                              ),
                              child: Center(
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          )

                        ],
                      )),


                )),
          ],
        ),
      ),
    );
  }
}
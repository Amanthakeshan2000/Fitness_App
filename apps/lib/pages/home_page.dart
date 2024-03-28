import 'package:flutter/material.dart';

import 'findGym.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Center(
            child: Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
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

          // Background image
          Positioned.fill(
          child: Image.asset(
          'assets/home1.jpg',

          fit: BoxFit.cover,
        ),
      ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      const Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        child: const Text(
                          "Enjoy our services !",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SearchBar(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                        ),
                        hintText: 'Search',
                        hintStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.grey),
                        ),
                        leading: const Icon(Icons.search, color: Colors.grey),
                        shape: MaterialStateProperty.all(
                          const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        trailing: [
                          IconButton(
                            icon: const Icon(Icons.keyboard_voice, color: Colors.grey),
                            onPressed: () {
                              print('Use voice command');
                            },
                          ),
                        ],
                        // other arguments
                      ),
                      const SizedBox(height: 20),
                      Image.asset('assets/second.png', scale: 0.01),
                      const SizedBox(height: 8),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              "Service",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 210.0),
                            IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              iconSize: 22.0,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {

                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));

                              },
                              child: Text(
                                  '                             Basic Nutrition                             ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),

                              ),


                            )

                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                   Diet and Health Conditions                  ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                       Dietary Supplements                        ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),


                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                               Food Safety                                ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),


                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                   Food Security and Access                   ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                   Healthy Living and Weight                   ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('        Shopping, Cooking, and Meal Planning        ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => findGym()));
                              },
                              child: Text('                            What is in Food                             ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),





                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              "My Path",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 210.0),
                            IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              color: Colors.white,
                              iconSize: 22.0,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () { },
                              child: Text('                                 Summery                                  ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () { },
                              child: Text('                                 Overview                                  ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
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
                                          ? Colors.green
                                          : Colors.white;
                                      return BorderSide(color: color, width: 2);
                                    }
                                ),
                              ),
                              onPressed: () { },
                              child: Text('                                     Other                                     ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                            )
                          ],
                        ),
                      ),
                      // Other Widgets and Containers...
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final BoxConstraints constraints;
  final String hintText;
  final MaterialStateProperty<TextStyle>? hintStyle;
  final Widget leading;
  final MaterialStateProperty<OutlinedBorder>? shape;
  final List<Widget>? trailing;

  const SearchBar({
    Key? key,
    required this.constraints,
    required this.hintText,
    this.hintStyle,
    required this.leading,
    this.shape,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          leading,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                // hintStyle: hintStyle?.value,
                border: InputBorder.none,
              ),
            ),
          ),
          if (trailing != null) ...trailing!,
        ],
      ),
    );
  }
}

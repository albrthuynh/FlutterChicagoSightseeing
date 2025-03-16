import 'package:flutter/material.dart';
import 'InformationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFB3DDF2),
      appBar: AppBar(
        backgroundColor: const Color(0XFFB3DDF2) ,
        title: const Text(
            'Sports',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Colors.grey,
                  offset: Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            )
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10)),
            // going to the bears page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Chicago Bears",
                      message: "The Chicago Bears are a professional American football team based in Chicago. The Bears compete in the National Football League (NFL) as a member of the National Football Conference (NFC) North division. The Bears have won nine NFL Championships, eight prior to the AFL–NFL merger and one Super Bowl.",
                      address: "1920 Football Dr Lake Forest, IL 60045",
                      image: "images/sports/bearsLogo.jpg",
                      funFact: "The Chicago Bears are one of the oldest teams in the NFL! They were originally founded in 1920, interesting!",
                      tag: "bearsLogo",
                      newImage: "images/sports/chicagoBearsNew.jpg",
                  )),
                );
              },
              child:
              Row ( // Row component is used to add spacing between the image and text
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: "bearsLogo",
                        child:  Image.asset(
                          'images/sports/bearsLogo.jpg',
                          width: 150,
                          height: 125,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                  ),

                  const SizedBox(width: 25), // inside row element, so spacing can be added between the image and text

                  const Text(
                    "Chicago Bears",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50), // space between each of the sports buttons

            // going to the cubs page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Chicago Cubs",
                      message: "The Chicago Cubs are a professional baseball team based in Chicago, Illinois, competing in Major League Baseball (MLB) as a member of the National League (NL) Central Division, with a rich history and a loyal fanbase, playing their home games at the iconic Wrigley Field. ",
                      address: "1060 W. Addison St., Chicago, IL 60613",
                      image: "images/sports/cubsLogo.jpg",
                      funFact: "The Chicago Cubs were the first ever team to play a game on television! Their game against the Brooklyn Dodgers at Wrigley Field was aired on NBC on August 26, 1939.",
                      tag: "cubsLogoImage",
                      newImage: "images/sports/cubsNew.jpg",
                  )),
                );
              },
              child:
                  Row (
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: "cubsLogoImage",
                            child: Image.asset(
                              'images/sports/cubsLogo.jpg',
                              width: 150,
                              height: 125,
                              fit: BoxFit.cover,
                            ), )
                        ),
                      ),

                      const SizedBox(width: 25),

                      const Text(
                        "Chicago Cubs",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(3, 3),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            ),



            SizedBox(height: 50),

            // going to the bulls page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Chicago Bulls",
                      message: "The Chicago Bulls are an American professional basketball team based in Chicago. The Bulls compete in the National Basketball Association (NBA) as a member of the Central Division of the Eastern Conference. The team was founded on January 16, 1966.",
                      address: "1901 W. Madison Street, Chicago, IL 60612",
                      image: "images/sports/bullsLogo.jpg",
                      funFact: "Chicago Bulls is the only NBA team to win multiple championships without ever losing in the NBA Finals! This makes their record a perfect 6-0 in championship appearances!",
                      tag: "bullsLogoImage",
                      newImage: "images/sports/bullsNew.jpg"
                  )),
                );
              },
              child:
              Row (
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Hero(
                        tag: "bullsLogoImage",
                        child: Image.asset(
                        'images/sports/bullsLogo.jpg',
                        width: 150,
                        height: 125,
                        fit: BoxFit.cover,
                      ), )
                    ),
                  ),

                  const SizedBox(width: 25),

                  const Text(
                    "Chicago Bulls",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

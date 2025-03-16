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
      title: 'Event Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFB3DDF2),
      appBar: AppBar(
        backgroundColor: const Color(0XFFB3DDF2) ,
        title: const Text(
            'Events',
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

            // going to fulton market information page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  // passing in the props/parameters to the next information screen
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Tree Lighting",
                      message: "Chicago's annual Christmas Tree Lighting ceremony, the 111th, took place on Friday, November 22nd in Millennium Park near Michigan Avenue and Washington Street, featuring a 53-foot Colorado Blue Spruce donated by the Holden-Shaddick family.",
                      address: "201 E. Randolph St., Chicago, IL 60601",
                      image: "images/events/ChicagoTree.jpg",
                      funFact: "The Chicago Tree Lighting ceremony dates all the way back to 1913! It makes this event one of the oldest official Christmas tree lighting traditions in the United States!",
                      tag: "chicagoTreeImage",
                      newImage: "images/events/chicagoTreeNew.jpg"
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
                        tag: "chicagoTreeImage",
                        child: Image.asset(
                          'images/events/ChicagoTree.jpg',
                          width: 150,
                          height: 125,
                          fit: BoxFit.cover,
                        ), )
                    ),
                  ),

                  const SizedBox(width: 25),

                   Text(
                    "Tree Lighting",
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

            // going to the Green River information page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "River Dyeing",
                      message: "The annual Chicago River dyeing is one of the most unique St. Patrick’s Day celebrations in the world. Typically held the Saturday before St. Patrick’s Day (the same day as the downtown parade), this bucket-list event is a beloved tradition that dates back over half a century.",
                      address: "280 S Columbus DrChicago, IL 60603",
                      image: "images/events/GreenLakeChicago.jpg",
                      funFact: "The dye does not harm the lake at all! There is 40 pounds of environmentally safe dye which have a secret recipe to it. The color lasts for 5 hours before fading away!",
                      tag: "greenLakeImage",
                      newImage: "images/events/greenLakeNew.webp"
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
                        tag: "greenLakeImage",
                        child: Image.asset(
                        'images/events/GreenLakeChicago.jpg',
                        width: 150,
                        height: 125,
                        fit: BoxFit.cover,
                      ), )
                    ),
                  ),

                  const SizedBox(width: 25),

                   Text(
                    "River Dyeing",
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

            // going to the pride parade description page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Pride Parade",
                      message: "The Chicago Pride Parade, also colloquially (and formerly) called the Chicago Gay Pride Parade or PRIDE Chicago, is an annual pride parade held on the last Sunday of June in Chicago, Illinois in the United States.",
                      address: "3900 N BroadwayChicago, IL 60613",
                      image: "images/events/PrideParadeImage.jpg",
                      funFact: "The Chicago Pride Parade started in 1970 with less then 200 people attending, but now today it attracts around one million attendees!",
                      tag: "prideParadeImage",
                      newImage: "images/events/prideParadeNew.jpg"
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
                        tag: "prideParadeImage",
                        child: Image.asset(
                          'images/events/PrideParadeImage.jpg',
                          width: 150,
                          height: 125,
                          fit: BoxFit.cover,
                        ), )
                    ),
                  ),

                  const SizedBox(width: 25),

                   Text(
                    "Pride Parade",
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

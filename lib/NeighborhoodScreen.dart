import 'package:flutter/material.dart';
import 'InformationScreen.dart'; // Ensure this is imported

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neighborhood Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class NeighborhoodScreen extends StatelessWidget {
  const NeighborhoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFB3DDF2),
      appBar: AppBar(
          backgroundColor: const Color(0XFFB3DDF2) ,
          title: const Text(
              'Neighborhoods',
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
                  // passing in the props to the next information screen
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Fulton Market",
                      message: "Fulton Market District is on the Near West Side of Chicago. It is served by the CTA's Green and Pink Lines at the Morgan 'L' station, as well as several bus routes. It borders the Warehouse District to the east, and the West Loop to the west. Fulton Market District has some of the highest value commercial real estate in the Chicago area.",
                      address: "1152 W Lake St, Chicago, IL 60607",
                      image: "images/neighborhoods/fultonmarket.jpg",
                      funFact: "Today Fulton Market is one of Chicago's trendiest neighborhoods. It is home to tech companies, luxury apartments, and Michelin-starred restaurants, but it wasn't always like that. This area formerly used to be Chicago's meatpacking and warehouse district!",
                      tag: "fultonMarketImage",
                      newImage: "images/neighborhoods/fultonMarketNew.jpg",
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
                    child: Hero (
                      tag: "fultonMarketImage",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/neighborhoods/fultonmarket.jpg',
                          width: 150,
                          height: 125,
                          fit: BoxFit.cover,
                        ),
                      ), )
                  ),

                  const SizedBox(width: 25),

                  const Text(
                    "Fulton Market",
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

            // going to the lincoln park information page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Lincoln Park",
                      message: "Lincoln Park's boundaries are precisely defined in the city's list of official community areas. It is bordered on the north by Diversey Parkway, on the west by the Chicago River, on the south by North Avenue, and on the east by Lake Michigan.",
                      address: "2045 N. Lincoln Pak W., Chicago IL 60614",
                      image: "images/neighborhoods/lincolnpark.jpg",
                      funFact: "Lincoln Park was actually once home to Chicago's cemetery! It was originally a public burial ground in the mid 1800s.",
                      tag: "lincolnParkImage",
                      newImage: "images/neighborhoods/lincolnParkNew.png"
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
                    child:
                        Hero(
                          tag: "lincolnParkImage",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/neighborhoods/lincolnpark.jpg',
                              width: 150,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                  ),

                  const SizedBox(width: 25),

                  const Text(
                    "Lincoln Park",
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

            // going to the magnificent mile description page
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationScreen(
                      title: "Magnificent Mile",
                      message: "The Magnificent Mile otherwise known as the \"Mag Mile\" is a stretch of Michigan Avenue running from the Michigan Avenue Bridge over the Chicago River to Oak Street. It is Chicago's premier shopping street filled with the finest department stores and high-end retailers. There are no shopping bargains to be found here.",
                      address: "625 N Michigan Ave. Chicago, IL 60610",
                      image: "images/neighborhoods/magmile.jpg",
                      funFact: "Chicago's Magnificent Mile has over 460 stores, 275 restaurants, and 60 hotels! It makes the Magnificent Mile one of the most famous shopping streets in the world.",
                      tag: "magMileImage",
                      newImage: "images/neighborhoods/magmileNew.jpg"
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
                            tag: "magMileImage",
                            child: Image.asset(
                              'images/neighborhoods/magmile.jpg',
                              width: 150,
                              height: 125,
                              fit: BoxFit.cover,
                            ), )
                    ),
                  ),

                  const SizedBox(width: 25),

                  const Text(
                    "Mag Mile",
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
            const SizedBox(height: 10)

          ],
        ),
      ),
    );
  }
}

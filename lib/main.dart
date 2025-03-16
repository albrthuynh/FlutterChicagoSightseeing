import 'package:flutter/material.dart';
import 'EventScreen.dart';
import 'NeighborhoodScreen.dart';
import 'SportScreen.dart';
import 'InformationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // Routes for the Project
      // EVENTS, NEIGHBORHOODS, SPORTS
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Welcome to Chicago!'),
        '/events': (context) => const EventScreen(),
        '/neighborhoods': (context) => const NeighborhoodScreen(),
        '/sports': (context) => const SportsScreen()
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child:
        Scaffold(
          backgroundColor: const Color(0XFFB3DDF2),
          appBar: AppBar(
              toolbarHeight: 140,
              backgroundColor: Colors.transparent,

              // title of the app bar
              title: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black,
                      )
                    ]
                ),
              ),

              // background Image of the Appbar
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/chicagoLong.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  color: const Color.fromARGB(120, 0, 0, 0),
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
          ),

            // inside the body of the screen
            body: Center(
              child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        children: [
                          // 1st tab
                          SportsScreen(),

                          // 2nd tab
                          EventScreen(),

                          // 3rd tab
                          NeighborhoodScreen()
                        ]
                      )
                    )
                    ]
                )),
            bottomNavigationBar: BottomAppBar(
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.sports,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.event,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.house,
                      color: Colors.blueAccent,
                    ),
                  ),
                ]
              )
        ),


        )
    );

  }
}

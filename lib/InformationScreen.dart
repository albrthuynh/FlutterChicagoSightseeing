import 'package:flutter/material.dart';

// stateful widget to change the image and description
class InformationScreen extends StatefulWidget {
  final String title;
  final String message;
  final String address;
  final String image;
  final String funFact;
  final String tag;
  final String newImage;

  // constructor taking in parameters
  const InformationScreen({
    super.key,
    required this.title,
    required this.message,
    required this.address,
    required this.image,
    required this.funFact,
    required this.tag,
    required this.newImage,
  });

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

// setting up the stateful widget
class _InformationScreenState extends State<InformationScreen> {
  late String image;
  late String message;
  late bool isChanged;

  @override
  void initState() {
    super.initState();
    image = widget.image;
    message = widget.message;
    isChanged = false;
  }

  // changeContent() toggles back and forth the original information and trivia
  void changeContent() {
    setState(() {
      if (isChanged) { // if the picture and description has changed then revert back
        image = widget.image;
        message = widget.message;
      }
      else {
        image = widget.newImage;
        message = widget.funFact;
      }
      isChanged = !isChanged; // toggle boolean
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFB3DDF2),
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 45,),
          onPressed: () {
            Navigator.pop(context);
          }
        ),

        // title of the app bar
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              // adds the shadow of the text
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black,
                )
              ]
          ),
        ),

        // background image of the Appbar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/chicagoLong.jpg"),
              fit: BoxFit.cover,
            ),
            // adds the rounded corners for the image
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.tag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: 500,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 30), // used throughout the screen to handle spacing

            Text(
                widget.title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 27, 54, 93)
                )
            ),
            const SizedBox(height: 10),

            Text(
                widget.address,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 27, 54, 93)
                )
            ),

            const SizedBox(height: 35),

            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 60)
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeContent,
          backgroundColor: const Color.fromARGB(255, 27, 54, 93),
          child: Icon(Icons.add_comment_rounded, color: Colors.white),
        )
    );
  }
}



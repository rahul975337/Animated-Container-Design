import 'package:animated/mynew.dart';
import 'package:flutter/material.dart';
//import 'package:shape_of_view/shape_of_view.dart';
//import 'package:demolist/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  double width = 320;
  double height = 150;
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);

    bool isFiltered = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: _height * 0.02,
              left: _width * 0.03,
              child: RichText(
                softWrap: true,
                text: TextSpan(
                  text: 'James Solomon\n',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(
                        text: '@CITOEMP001233\n\n',
                        style: TextStyle(color: Colors.purple, fontSize: 11)),
                    TextSpan(
                        text:
                            'James Solomon is a Tech Entrepreneur in\n authenticated jhdhd hdihadosocial media\n James Solomon is a Tech Entrepreneur\n in ch Entrepreneur in authenticated social\n media James Solomon',
                        style: TextStyle(fontSize: 10, color: Colors.black))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(99, 0, 0, 420),
              child: Stack(
                children: [
                  CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: Color(0xFFB8F7FF),
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: Container(
                      height: 280,
                      width: 500,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110, top: 100),
                    child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(300 / 360),
                      child: new Text(
                        "Citoto",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(273, 84, 20, 0),
              child: Column(
                children: [
                  Text(
                    '210',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '7',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '300',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Positioned(
              top: _height * 0.25,
              left: _width * 0.25,
              child: CircleAvatar(
                radius: 66,
                backgroundColor: Color(0xFF00ADBD),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 65,
                  child: CircleAvatar(
                    radius: 59,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _height * 0.40,
              right: _width * 0.1,
              child: Row(
                children: [
                  Text(
                    'Authenticated',
                    style: TextStyle(color: Colors.red[800], fontSize: 12.0),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '80%',
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: _height * 0.45,
              right: _width * 0.46,
              left: _width * 0.35,
              bottom: _height * 0.52,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.0),
                ),
                color: Color(0xFFB8F7FF),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 12.0,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
              top: _height * 0.45,
              right: _width * 0.05,
              left: _width * 0.75,
              bottom: _height * 0.52,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.0),
                ),
                color: Color(0xFFB8F7FF),
                child: Row(
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Filters',
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                  ],
                ),
                onPressed: () {
                  // setState(() {
                  //   if (isFiltered == false) {
                  //     width = 320;
                  //     height = 150;
                  //     isFiltered = true;
                  //   } else {
                  //     width = 200;
                  //     height = 200;
                  //     isFiltered = false;
                  //   }
                  // });
                },
              ),
            ),
            Positioned(
              top: _height / 2,
              child: Container(
                height: _height / 2,
                width: _width,
                // color: Colors.blue,
                child: Container(
                  height: _height / 2,
                  width: _width,
                  child: ListView.separated(
                    itemCount: 4,
                    itemBuilder: (context, index) => Center(
                      child: AnimatedContainer(
                        // Use the properties stored in the State class.
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        // Define how long the animation should take.
                        duration: Duration(seconds: 1),
                        // Provide an optional curve to make the animation feel smoother.
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        // When the user taps the button
        onPressed: () {
          // Use setState to rebuild the widget with new values.
          setState(() {
            // Create a random number generator.
            // final random = Random();
            if (isFiltered == false) {
              width = 320;
              height = 150;
              isFiltered = true;
            } else {
              width = 200;
              height = 200;
              isFiltered = false;
            }
          });
        },
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.red,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(x, -100)
      ..lineTo(0, y)
      ..lineTo(0, y)
      ..lineTo(x, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}

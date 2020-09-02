import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _safePaddingTop, _safePaddingBottom, _width, _height;
  double width = 280;
  double height = 150;
  double rightMargin = 20;
  double leftMargin = 20;
  double topMargin = 10;
  bool isCircleVisible = false;

  bool isFiltered = false;
  @override
  Widget build(BuildContext context) {
    _safePaddingTop = MediaQuery.of(context).padding.top;
    _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: _height - _height / 2.1,
                  width: _width,
                  // color: Colors.black,
                  child: Stack(
                    children: [
                      Positioned(
                        top: _height * 0.02,
                        left: _width * 0.03,
                        child: RichText(
                          softWrap: true,
                          text: TextSpan(
                            text: 'James Solomon\n',
                            style: TextStyle(fontSize: 22, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: '@CITOEMP001233\n\n',
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 11)),
                              TextSpan(
                                  text:
                                      'James Solomon is a Tech Entrepreneur in\n authenticated jhdhd hdihadosocial media\n James Solomon is a Tech Entrepreneur\n in ch Entrepreneur in authenticated \nsocial media James Solomon\n in ch Entrepreneur in authenticated \nsocial media James Solomon',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _width / 2.8),
                        child: CustomPaint(
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
                      ),
                      Positioned(
                        top: _height * 0.2,
                        right: _width / 3,
                        child: Container(
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(273, 84, 20, 0),
                        child: Column(
                          children: [
                            Text(
                              '210',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
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
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
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
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: _height * 0.25,
                        left: _width * 0.3,
                        child: CircleAvatar(
                          radius: 56,
                          backgroundColor: Color(0xFF00ADBD),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 55,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/3435318/pexels-photo-3435318.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: _height * 0.37,
                        right: _width * 0.1,
                        child: Row(
                          children: [
                            Text(
                              'Authenticated',
                              style: TextStyle(
                                  color: Colors.red[800], fontSize: 12.0),
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
                          top: _width / 1.54,
                          left: _width * 0.23,
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          )),
                      Positioned(
                        top: _height * 0.42,
                        left: _width * 0.34,
                        child: Container(
                          width: 70,
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color(0xFFB8F7FF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.0),
                                ),
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
                      ),
                      Positioned(
                        top: _height * 0.42,
                        right: _width * 0.05,
                        child: Container(
                          width: 70,
                          height: 30,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Color(0xFFB8F7FF),
                            child: Text(
                              'Filters',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.0),
                            ),
                            onPressed: () {
                              setState(() {
                                if (isFiltered == false) {
                                  width = 280;
                                  height = 150;
                                  isFiltered = true;
                                  leftMargin = 20;
                                  rightMargin = 20;
                                  topMargin = 10;
                                  isCircleVisible = false;
                                } else {
                                  width = 200;
                                  height = 150;
                                  leftMargin = _width / 14;
                                  topMargin = _width / 5;
                                  rightMargin = 10;
                                  isFiltered = false;
                                  isCircleVisible = true;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                          top: _height * 0.33,
                          left: _width * 0.01,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RotatedBox(
                                quarterTurns: -1,
                                child: Transform.scale(
                                  scale: 0.6,
                                  child: CupertinoSwitch(
                                    activeColor: Color(0xFFB8F7FF),
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        // _switchValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                'Social',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(),
                  height: _height / 2.1,
                  child: Column(
                    children: [
                      Visibility(
                        visible: isCircleVisible,
                        child: Container(
                          height: _width / 9,
                          margin: EdgeInsets.only(top: 8, bottom: 15, left: 12),
                          child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                    // height: 30,
                                    // width: 70,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      child: Image(
                                          image: NetworkImage(
                                              'https://blog.photofeeler.com/wp-content/uploads/2017/09/tinder-photo-size-tinder-picture-size-tinder-aspect-ratio-image-dimensions-crop.jpg')),
                                    ),
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 15,
                                  ),
                              itemCount: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Visibility(
                                visible: isCircleVisible,
                                child: Container(
                                  width: _width / 8,
                                  margin: EdgeInsets.only(left: 12),
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) =>
                                          Container(
                                            height: _width / 8,
                                            width: _width / 8,
                                            child: CircleAvatar(
                                              // backgroundColor: Colors.blue,
                                              backgroundImage: NetworkImage(
                                                  'https://images.pexels.com/photos/3435318/pexels-photo-3435318.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                                              // radius: _width / 12,
                                            ),
                                          ),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 10,
                                          ),
                                      itemCount: 20),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: _width - _width / 8,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: 4,
                                    itemBuilder: (context, index) =>
                                        AnimatedContainer(
                                      margin: EdgeInsets.only(
                                          left: leftMargin, right: rightMargin),
                                      width: width,
                                      height: height,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                'https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    ),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

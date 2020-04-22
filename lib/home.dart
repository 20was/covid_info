import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid- 19 Info',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff473f97),
      appBar: AppBar(
        title: Text(
          'COVID-19',
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
          ),
        ),
        backgroundColor: Color(0xff473f97),
        elevation: 0.0,
        centerTitle: true,
        leading: Icon(Icons.dashboard),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: AnimationLimiter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                  children: [
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Color(0xff473f97),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70.0),
                          )),
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/full_img.png'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Text(
                                  'We are here for your safety. If you have a problem with your'
                                  ' health with covid 19, Please let us know. ',
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff8d88c9),
                                        letterSpacing: .5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Expanded(
                                flex: 2,
                                child: FlatButton(
                                  color: Color(0xffff5959),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Contact Us',
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: .2),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xff473f97),
                      //height: 200,
                      child: Container(
                        //height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50.0),
                            )),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 40, left: 25, right: 25, bottom: 40),
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color(0xfffff1ec),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'HELLO BISHWAS',
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 21,
                                          color: Color(0xffff7b4b),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(
                                    '27 Years',
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                        fontSize: 21,
                                        //color: Color(0xffff7b4b),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xfffcd5c7),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    )),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/nf.png'),
                                      backgroundColor: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'NEPAL',
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            //color: Color(0xffff7b4b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Symptoms',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 22,
                              //color: Color(0xffff7b4b),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffffd4d4),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          width: MediaQuery.of(context).size.width / 3,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/s1.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "TIREDNESS",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xffff5f5f),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffd4ffea),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          width: MediaQuery.of(context).size.width / 3,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/s2.gif'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "FEVER",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff49dd95),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffd4f5ff),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width / 3,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/s3.gif'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "COUGH",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff08b6eb),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xfffff4d4),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          width: MediaQuery.of(context).size.width / 3,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/s4.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "RUNNY NOSE",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xffcb9802),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        color: Color(0xffff5959),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: () {},
                        child: const Text('Know More',
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Prevention',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 22,
                              //color: Color(0xffff7b4b),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xfff2f6f7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/p1.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "SECURE DISTANCE",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      //color: Color(0xffcb9802),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xfff2f6f7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              )),
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage('images/p2.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "WASH HANDS",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      //color: Color(0xffcb9802),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        color: Color(0xffff5959),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: () {},
                        child: const Text('Know More',
                            style:
                                TextStyle(fontSize: 22, color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Color(0xff473f97),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 20, left: 10, right: 10, bottom: 20),
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffffe9d4),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50.0),
                                topLeft: Radius.circular(50.0),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Image(
                                  image: AssetImage('images/who.png'),
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'WHO Guidelines',
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Color(0xffff7b4b)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Standard recommendation to prevent the '
                                      'spread of COVID-19',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffff5959),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      )),
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    color: Color(0xff7e0000),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
//                        Container(
//                          padding: EdgeInsets.all(20),
//                          decoration: BoxDecoration(
//                              color: Color(0xfffcd5c7),
//                              borderRadius: BorderRadius.all(
//                                Radius.circular(50.0),
//                              )),
//                          child: Row(
//                            children: <Widget>[
//                              Text('Flag'),
//                            ],
//                          ),
//                        )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

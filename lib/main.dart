import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MountainApp(),
    ));

class MountainApp extends StatefulWidget {
  const MountainApp({Key? key}) : super(key: key);

  @override
  _MountainAppState createState() => _MountainAppState();
}

class _MountainAppState extends State<MountainApp> {
  int _current = 0;
  List imgList = [
    'https://sun1.tattelecom-nbc.userapi.com/impg/5A1RJgrcb3brZaPDMFJUEXs_q5qCPu384-kDbA/h827C9mZa98.jpg?size=271x442&quality=96&sign=e2a06ea788c108a24392199195369a26&type=album',
    'https://sun9-48.userapi.com/impg/b7FChNUuMtd-QsxutBJgBfnb3tCRakm-vjpAfw/DS8kWMlIhIE.jpg?size=272x442&quality=96&sign=438f2fd4119c01fb9fd1a9e145070b34&type=album',
    'https://sun9-20.userapi.com/impg/tUrzYYHF8t5ERHhIJTtWs2Xj1VuesdCuI1smdA/Mj_De8HzqAI.jpg?size=272x442&quality=96&sign=3a96bf03ab4ff2c598920ef4e9ebd134&type=album',
    'https://sun9-50.userapi.com/impg/TpsIZELmXB9EmXVyk0p0B71FxX24N34e5i7fKw/nPqOaohKw6s.jpg?size=272x442&quality=96&sign=3bfff669b1f86f672a61b6954b619ef5&type=album',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //primary: false,
        backgroundColor: Color.fromRGBO(14, 118, 147, 1),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(14, 118, 147, 1),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm, color: Colors.white),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm, color: Colors.white),
                title: Text(''),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 12.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      '     Beatifull \n     Mountains',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 29,
                          letterSpacing: -0.3333333432674408,
                          fontWeight: FontWeight.normal,
                          height: 1 /*PERCENT not supported*/

                          ),
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Positioned(
                    top: 68,
                    left: 0,
                    child: Text(
                      '       Choose your mountain',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 23,
                          letterSpacing: -0.3333333432674408,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                SizedBox(
                  height: 50.0,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: 420.0,
                      initialPage: 0,
                      enlargeCenterPage: true,
                      onPageChanged: (index, _) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList.map((imgURL) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            //margin: EdgeInsets.all(0.1),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.47999998927116394),
                                    offset: Offset(3, 3),
                                    blurRadius: 1)
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              child: Image.network(
                                imgURL,
                                fit: BoxFit.fitWidth,
                              ),
                            )
                            
                            );
                      },
                    );
                  }).toList(),
                )
              ]),
        )));
  }
}

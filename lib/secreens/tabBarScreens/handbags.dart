import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/widgets/indecator.dart';

class HandBages extends StatefulWidget {
  const HandBages({Key? key}) : super(key: key);

  @override
  State<HandBages> createState() => _HandBagesState();
}

class _HandBagesState extends State<HandBages> {
  int _counter = 0;
  late PageController _pageController;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //     _pageController=PageController(viewportFraction: 0.5,
  //       initialPage: 0,);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 230,
                  child: PageView(
                      controller: PageController(
                        viewportFraction: 0.6,
                        initialPage: 1,

                      ),
                    onPageChanged: (int selectedIndecator) {
                      print(selectedIndecator);
                      setState(() {
                        _counter = selectedIndecator;
                        print('counter =$_counter');
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/prouctDetalis');
                            },
                            child: Image(image: AssetImage('images/firstBage.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('images/secandBage.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('images/firstBage.png')),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Indecator(
                      selected: true ? _counter == 0 : false,
                      widthIndecator: 10,
                      heightIndecator: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Indecator(
                      selected: true ? _counter == 1 : false,
                      widthIndecator: 10,
                      heightIndecator: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Indecator(
                      selected: true ? _counter == 2 : false,
                      widthIndecator: 10,
                      heightIndecator: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 510,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 132 / 180,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/loginScreen');
                    },
                    child: Card(
                      child: Stack(
                        children: [

                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Image(image: AssetImage('images/thardBage.png')),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Hand bags',
                                  style: GoogleFonts.roboto(
                                      fontSize: 20, color: Color(0xff474559)),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  '\$10.00',
                                  style: GoogleFonts.roboto(
                                      fontSize: 15, color: Color(0xff9E9DB0)),
                                ),

                              ],
                            ),
                          ),
                          Positioned(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite,color: Color(0xff9E9DB0),),
                            ),
                            right: 10,
                            top:5,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}

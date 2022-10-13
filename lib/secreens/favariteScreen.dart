import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavariteScreen extends StatefulWidget {
  const FavariteScreen({Key? key}) : super(key: key);

  @override
  State<FavariteScreen> createState() => _FavariteScreenState();
}

class _FavariteScreenState extends State<FavariteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Favarite',
          style: GoogleFonts.quicksand(
            color: Color(0xff474559),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, right: 32.0, left: 32),
        child: ListView(
          children: [
            Container(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  childAspectRatio: 132 / 214,
                ),
                itemBuilder: (context, index) {
                  return Scrollbar(
                    thickness: 5,
                    child: InkWell(
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
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
            Positioned(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite,color: Colors.red,),
              ),
              right: 10,
              top:5,
            ),


          ],
        ),
      ),
    );
  }
}

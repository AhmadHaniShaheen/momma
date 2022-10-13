import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 33, right: 33, left: 33.0),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MOMMA.',
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'FASHIONS.',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
            Divider(
              color: Color(0xffDBDEE3),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'About',
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Color(0xff474559),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical professor.',
              style: GoogleFonts.roboto(fontSize: 18, color: Color(0xff66647B)),
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Image(image: AssetImage('images/chose.png')),

              Image(image: AssetImage('images/shart.png')),

            ],),
            SizedBox(height: 8,),
            Image(image: AssetImage('images/gril.png'))
          ],
        ),
      ),
    );
  }
}

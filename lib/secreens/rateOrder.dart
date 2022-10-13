import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateOrder extends StatefulWidget {
  const RateOrder({Key? key}) : super(key: key);

  @override
  State<RateOrder> createState() => _RateOrderState();
}

class _RateOrderState extends State<RateOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'payment Successful',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff111111)),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffDCDCDC),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homeScreen');
                },
                child: Text(
                  'SUBMIT',
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),

            ),
            TextButton(onPressed: (){
              Navigator.pushReplacementNamed(context, '/homeScreen');

            }, child: Text(
              'Not now!',
              style:
              GoogleFonts.quicksand(fontSize: 18, color: Color(0xff8F8FA6),decoration: TextDecoration.underline, ),
            ),)

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/PaymentSuccessful!.png'),
            ),
            SizedBox(height: 24,),
            Text(
              'payment Successful',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff111111)),
            ),
            SizedBox(height: 8,),
            Text(
              'We have emailed you the receipt.',
              style:
                  GoogleFonts.quicksand(fontSize: 18, color: Color(0xff8F8FA6)),
            ),
            SizedBox(height: 40,),
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
                  Navigator.pushNamed(context, '/rateOrder');
                },
                child: Text(
                  'Finish',
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

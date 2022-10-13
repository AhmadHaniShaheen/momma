import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body: Padding(
        padding: const EdgeInsets.only(left: 33,right: 33.0,top: 85),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Reset Password',
                style: GoogleFonts.nunito(
                    color: Color(0xff23203F),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Enter your email to reset password',
                style: GoogleFonts.roboto(
                    color: Color(0xff716F87),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 36,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle:
                GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/virify');
              },
              child: Text(
                'Reset',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

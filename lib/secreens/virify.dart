import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Virify extends StatefulWidget {
  const Virify({Key? key}) : super(key: key);

  @override
  State<Virify> createState() => _VirifyState();
}

class _VirifyState extends State<Virify> {
  void onNamedTab() => Navigator.pushNamed(context, '/homeScreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 33, right: 33.0, top: 85),
        child: Padding(
          padding: const EdgeInsets.only(left: 33, right: 33.0, top: 85),
          child: Column(
            children: [
              Text(
                'Verify Your Account',
                style: GoogleFonts.quicksand(
                    color: Color(0xff23203F),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32,),
              Text(
                'We are sending OTP to validate your\nmobile number. Hang on!',
                style: GoogleFonts.roboto(
                  color: Color(0xff716F87),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,

                    child: Material(
                      elevation: 6,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffffffff),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,

                    child: Material(
                      elevation: 6,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffffffff),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    width: 50,

                    child: Material(
                      elevation: 6,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffffffff),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    width: 50,

                    child: Material(
                      elevation: 6,
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffffffff),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color(0xffffffff),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 28,
              ),
              RichText(
                text: TextSpan(
                    text: 'SMS has been sent to ',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Color(0xff9391A4),
                    ),
                    children: [
                      TextSpan(
                        text: '1800 123 4567',
                        style: GoogleFonts.roboto(
                          color: Color(0xff23203F),
                          fontSize: 15,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 53),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homeScreen');
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

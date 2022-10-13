import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEdingController;
  String? emailError;
  String? passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEdingController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailEditingController.dispose();
    _passwordEdingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/loginScreen');
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff000000),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33, top: 20),
        child: ListView(
          children: [
            Text(
              'Sign Up',
              style: GoogleFonts.nunito(
                  color: Color(0xff23203F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Create an account',
              style: GoogleFonts.roboto(
                  color: Color(0xff716F87),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'first Name',
                hintStyle:
                    GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'last Name',
                hintStyle:
                    GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: _emailEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                errorText: emailError,
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
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle:
                    GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: _passwordEdingController,
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                errorText: passwordError,
                hintText: 'Password',
                suffixIcon: Icon(Icons.visibility),
                hintStyle:
                    GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                // Navigator.pushReplacementNamed(context, '/virify');
                preformData();
                // showSnackBar(massage: 'Enter your email and password');
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }


  bool checkData(){
    if(_emailEditingController.text.isNotEmpty&&_passwordEdingController.text.isNotEmpty){
      return true;
    }
    showSnackBar(massage: 'Enter your email or password');
    checkErrors();
    return false;
  }
  void checkErrors(){
    setState(() {
      emailError=_emailEditingController.text.isEmpty?'enter your email':null;
      passwordError=_passwordEdingController.text.isEmpty?'enter your password':null;
    });
  }
  void preformData(){
    if(checkData()){
      login();
    }
  }
  void login(){
    Future.delayed(Duration(seconds: 1),(){
      Navigator.pushReplacementNamed(context, '/homeScreen');
    });
  }
  void showSnackBar({required String massage, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          massage,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error? Colors.green: Colors.red,
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:momma/model/user.dart';
import 'package:momma/pref/shardPrefController.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:momma/provider/languageProvider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEdingController;
  String? emailError;
  String? passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = onNamedTab;
    _emailEditingController = TextEditingController();
    _passwordEdingController = TextEditingController();
  }

  void onNamedTab() => Navigator.pushNamed(context, '/signupScreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Language_Provider>(context, listen: false)
              .changeLanguage();
        },
        child: Icon(Icons.language),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 33.0, right: 33, top: 167),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.login,
              style: GoogleFonts.nunito(
                  color: Color(0xff23203F),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              AppLocalizations.of(context)!.login_Detalis,
              style: GoogleFonts.roboto(
                  color: Color(0xff716F87),
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailEditingController,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.emial_Adress,
                errorText: emailError,
                hintStyle:
                    GoogleFonts.roboto(fontSize: 22, color: Color(0xff9391A4)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffD0D0D0))),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _passwordEdingController,
              onTap: () {},
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                errorText: passwordError,
                hintText: AppLocalizations.of(context)!.pasword,
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
                prformLogin();
                // Navigator.pushReplacementNamed(context, '/homeScreen');
              },
              child: Text(
                AppLocalizations.of(context)!.login,
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/resetPassword');
                    },
                    child: Text(AppLocalizations.of(context)!.forgetPasword))),
            Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                    text: AppLocalizations.of(context)!.sign_up_hint,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Color(0xff9391A4),
                    ),
                    children: [
                      TextSpan(
                          text: AppLocalizations.of(context)!.sign_up,
                          style: TextStyle(
                            color: Color(0xff23203F),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: _tapGestureRecognizer),
                    ]),
              ),
            ),
            SizedBox(
              height: 33,
            )
          ],
        ),
      ),
    );
  }

  void showSnackBar({required String massage, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          massage,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error ? Colors.green : Colors.red,
      ),
    );
  }

  bool checkLoginData() {
    if (_passwordEdingController.text.isNotEmpty &&
        _emailEditingController.text.isNotEmpty) {
      checkErrors();
      return true;
    } else {
      checkErrors();
      showSnackBar(massage: AppLocalizations.of(context)!.passwordEmail_erorr);
      return false;
    }
  }

  void checkErrors() {
    setState(() {
      passwordError =
          _passwordEdingController.text.isEmpty ? AppLocalizations.of(context)!.password_erorr : null;
      emailError =
          _emailEditingController.text.isEmpty ? AppLocalizations.of(context)!.email_erorr : null;
    });
  }

  void prformLogin() async {
    await ShardPrefController()
        .savePref(User(email: _emailEditingController.text));
    if (checkLoginData()) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/homeScreen');
      });
    }
  }

  void lgoin() {
    prformLogin();
    //  if(email.text==null&&password.text==null){
    //  show SnackBar}
    //  else if(
    //  login process
  }
}

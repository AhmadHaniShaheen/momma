import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
      body: ListView(
        children: [
          SizedBox(
            height: 56,
          ),
          SizedBox(
            height: 150,
            child: Image(
              image: AssetImage('images/Bg.png'),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'John Deo',
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Color(0xff444657),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'johndeo@yourmail.com',
                  style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: Color(0xff87879D),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Orders Count',style: GoogleFonts.quicksand(color: Color(0xff444557),fontSize: 16,fontWeight: FontWeight.w600),),
                          Text('13',style: GoogleFonts.quicksand(color: Color(0xff9E9DB0),fontSize: 14),),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 30,
                        color: Color(0xffE8E8E8),
                      ),
                      Column(
                        children: [
                          Text('Total Paid',style: GoogleFonts.quicksand(color: Color(0xff444557),fontSize: 16,fontWeight: FontWeight.w600),),
                          Text('2342.55 \$',style: GoogleFonts.quicksand(color: Color(0xff9E9DB0),fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
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
                          'Save',
                          style: GoogleFonts.roboto(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )


              ],
            ),
          )
        ],
      ),

    );
  }

  bool checkData(){
    if(_emailEditingController.text.isNotEmpty){
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
      // Navigator.pushReplacementNamed(context, '/homeScreen');
      Navigator.pop(context);
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

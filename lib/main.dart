import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:momma/pref/shardPrefController.dart';
import 'package:momma/provider/languageProvider.dart';
import 'package:momma/secreens/aboutScreen.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomCart.dart';
import 'package:momma/secreens/bottomNavigatorScreens/bottomHome.dart';
import 'package:momma/secreens/homeScreen.dart';
import 'package:momma/secreens/loginScreen.dart';
import 'package:momma/secreens/lunch_screen.dart';
import 'package:momma/secreens/onBording_screen.dart';
import 'package:momma/secreens/orderDetalis.dart';
import 'package:momma/secreens/orderHistory.dart';
import 'package:momma/secreens/payment_method.dart';
import 'package:momma/secreens/paymentsuccessful.dart';
import 'package:momma/secreens/product_ditales.dart';
import 'package:momma/secreens/profileScreen.dart';
import 'package:momma/secreens/rateOrder.dart';
import 'package:momma/secreens/resetPassword.dart';
import 'package:momma/secreens/searchScreen.dart';
import 'package:momma/secreens/signup.dart';
import 'package:momma/secreens/virify.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ShardPrefController().initialShardPref();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Language_Provider(),)
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // localizationsDelegates: [
        //   AppLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //
        // ],
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        // supportedLocales: [
        //   Locale('en'),
        //   Locale('ar'),
        // ],
        supportedLocales: AppLocalizations.supportedLocales,
        locale:Locale(Provider.of<Language_Provider>(context).language),
        initialRoute: '/lunch_screen',
        routes: {
          '/lunch_screen':(context)=>Lunch_Screen(),
          '/onBording_screen':(context)=>OnBording_screen(),
          '/homeScreen':(context)=>HomeScreen(),
          '/loginScreen':(context)=>LoginScreen(),
          '/signupScreen':(context)=>SignupScreen(),
          '/virify':(context)=>Virify(),
          '/resetPassword':(context)=>ResetPassword(),
          '/profileScreen':(context)=>ProfileScreen(),
          '/prouctDetalis':(context)=>ProductDetalis(),
          '/paymentMethod':(context)=>PaymentMethod(),
          '/paymentSuccessful':(context)=>PaymentSuccessful(),
          '/rateOrder':(context)=>RateOrder(),
          '/orderDetalis':(context)=>OrderDetalis(),
          '/orderHistory':(context)=>OrderHistory(),
          '/searchScreen':(context)=>SearchScreen(),
          '/aboutScreen':(context)=>AboutScreen(),
          '/bottomCart':(context)=>BottomCart(),
          '/bottomHome':(context)=>BottomHome(),
        },
      ),
    );
  }
}

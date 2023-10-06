import 'package:flutter/material.dart';
import 'package:shopy/screen/login_screen.dart';
import 'package:shopy/screen/register_screen.dart';
import 'package:shopy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
   Widget logo(){
    return Container(
      margin:  EdgeInsets.only(
        top: 180
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/logo.svg'
        ),
      ),
    );
   }

  Widget signUpBtn(){
    return Container(
      margin: const EdgeInsets.only(
        top: 10
      ),
      
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)
          ),
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0
          )
        ),
        
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
        }, 
        child: Text(
          'Sign Up',
          style: splashBtnSignUpTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold
          ),
        )
      ),
    );
  }

  Widget signInBtn(){
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 20,
      ),
      
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14)
          ),
          padding: EdgeInsets.symmetric(
            vertical: 30
          )
        ),
        
        onPressed: (){
            // Navigasi ke layar login saat tombol ditekan
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        }, 
        child: Text(
          'Sign In',
          style: splashBtnSignInTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w900
          ),
        )
      ),
    );
   }
    
    return Scaffold(
      backgroundColor: blueColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: marginDefault,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logo(),
              Spacer(),
              signUpBtn(),
              signInBtn()
            ],
          ),
        ),
      )
    );
  }
}
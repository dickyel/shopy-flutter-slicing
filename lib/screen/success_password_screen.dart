import 'package:flutter/material.dart';
import 'package:shopy/screen/back_login_screen.dart';
import 'package:shopy/screen/login_screen.dart';
import 'package:shopy/screen/new_password_screen.dart';
import 'package:shopy/screen/register_screen.dart';
import 'package:shopy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessPasswordScreen extends StatelessWidget {
  const SuccessPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget successHeader(){
      return Container(
        margin:  EdgeInsets.only(
          top: 80
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/succes.svg'
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Password reset\nsuccessful',
              style: SignInTextStyle.copyWith(
                fontSize: 18
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have successfully reset your \npassword.Please use your new \npassword when logging in',
              style: SignInTextStyle.copyWith(
                fontSize: 14
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )
      
      );
    }



  Widget signInBtn(){
    return Container(
      margin: const EdgeInsets.only(
        
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => const BackLoginScreen()));
        }, 
        child: Text(
          'Login',
          style: splashBtnSignInTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w900
          ),
        )
      ),
    );
   }
    
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: marginDefault,
          ),
          child: Column(
          
            children: [
              successHeader(),
              Spacer(),
              signInBtn()
            ],
          ),
        ),
      )
    );
  }
}
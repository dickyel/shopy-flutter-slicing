import 'package:flutter/material.dart';
import 'package:shopy/screen/login_screen.dart';
import 'package:shopy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {


    Widget appBar(){
      return Container(

        margin: EdgeInsets.only(
          top: 30,
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: greyColor,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Sign Up',
                  style: SignInTextStyle.copyWith(
                    color: greyColor,
                    fontSize: 26.0,
                    fontWeight: semiBold
                  ),
                )
              ],
            ),
            
          ],
        ),
      );
    }

    Widget name(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: SignInTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: whiteColor2,
                borderRadius: BorderRadius.circular(14)
              ),

              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: SignInTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Nama Kamu',
                          hintStyle: placeholderTextStyle
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ],
        ),
      );
    }

    Widget email(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: SignInTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: whiteColor2,
                borderRadius: BorderRadius.circular(14)
              ),

              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: SignInTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Youtube@gmail.com',
                          hintStyle: placeholderTextStyle
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ],
        ),
      );
    }


    Widget password(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: SignInTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: whiteColor2,
                borderRadius: BorderRadius.circular(14)
              ),

              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: SignInTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your password',
                          hintStyle: placeholderTextStyle
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ],
        ),
      );
    }


    Widget signInBtn(){
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
       
        ),
        
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)
            ),
            padding: EdgeInsets.symmetric(
              vertical: 24
            )
          ),
          
          onPressed: (){
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

    Widget textSignUp(){
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Divider(
              color: Colors.black,
              height: 20,
              thickness: 0.5,
              indent: 0,
              endIndent: 0,
              ),
            Text(
              'Or sign up with',
              style: SignInTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold
              ),
            ),
            Divider(
              color: blueColor,
              thickness: 5,
            ),
          ],
        ),
      );
    }

    Widget otherBtn(){
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/Gmail.svg'
            ),
            SvgPicture.asset(
              'assets/Fb.svg'
            )
          ],
        ),
      );
    }

    Widget footer(){
      return Container(
        margin: EdgeInsets.only(
          bottom: 20,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: SignInTextStyle.copyWith(
                fontSize: 12,

              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
              },
              child: Text(
                'Sign In',
                style: SignInTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: marginDefault
          ),
          child: Column(
            children: [
              appBar(),
              name(),
              email(),
              password(),
              signInBtn(),
              textSignUp(),
              otherBtn(),
              Spacer(),
              footer(),
            ],
          ),
        )
      ),
    );
  }
}
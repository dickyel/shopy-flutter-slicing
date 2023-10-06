import 'package:flutter/material.dart';
import 'package:shopy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackLoginScreen extends StatelessWidget {
  const BackLoginScreen({super.key});

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
                  'Welcome back',
                  style: SignInTextStyle.copyWith(
                    color: greyColor,
                    fontSize: 26.0,
                    fontWeight: semiBold
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Please fill E-mail & password to login your \nShopy application account.',
              style: SignInTextStyle.copyWith(
                fontSize: 13,
                fontWeight: regular
              ),
            )
          ],
        ),
      );
    }

    Widget email(){
      return Container(
        margin: EdgeInsets.only(
          top: 47,
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

    Widget forgetPassword()
    {
      return Container(
        margin: EdgeInsets.only(
          top: 10,

        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forget Password?',
              style: SignInTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold
              ),
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
          
          onPressed: (){}, 
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

    Widget textSignIn(){
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
              'Or sign in with',
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
              'Don\'t have an account ?',
              style: SignInTextStyle.copyWith(
                fontSize: 12,

              ),
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Text(
                'Sign Up',
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
              email(),
              password(),
              forgetPassword(),
              signInBtn(),
              textSignIn(),
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
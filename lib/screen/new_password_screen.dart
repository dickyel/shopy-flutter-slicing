import 'package:flutter/material.dart';
import 'package:shopy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                  'New Password',
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
              'Your new password must be different\nfrom previously used passwords.',
              style: SignInTextStyle.copyWith(
                fontSize: 13,
                fontWeight: regular
              ),
            )
          ],
        ),
      );
    }

    Widget newPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 47,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Password',
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
                          hintText: 'New Password',
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


    Widget passwordConfirmation(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password Confirmation',
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
                          hintText: 'Password Confirmation',
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



    Widget updateBtn(){
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 30,
       
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
            'Update',
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: marginDefault
          ),
          child: Column(
            children: [
              appBar(),
              newPassword(),
              passwordConfirmation(),
              Spacer(),
              updateBtn()
              
            ],
          ),
        )
      ),
    );
  }
}
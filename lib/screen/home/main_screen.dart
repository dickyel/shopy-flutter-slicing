import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shopy/screen/home/home_screen.dart';
import 'package:shopy/screen/home/profile_screen.dart';
import 'package:shopy/screen/home/shop_screen.dart';
import 'package:shopy/screen/home/wishlist_screen.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int currentIndex = 0;
 



   
  @override

  Widget build(BuildContext context) {

      // ignore: unused_element

    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30)
        ),
        child: BottomAppBar(
        
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
         
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value){
              setState(() {
                print(value);
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
           
                
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10, 
                  ),
                  child: SvgPicture.asset(
                    'assets/home-svg.svg',
                    
                  )
                ),
                label: ''
                
              ),
              BottomNavigationBarItem(
            
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10, 
                  ),
                  child: SvgPicture.asset(
                    'assets/love-svg.svg'
                  )
                ),
                label: ''
              ),
              BottomNavigationBarItem(
             
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: SvgPicture.asset(
                    'assets/shop-svg.svg'
                  )
                ),
                label: ''
              ),
              BottomNavigationBarItem(
           
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: SvgPicture.asset(
                    'assets/profile-svg.svg'
                  )
                ),
                label: ''
              ),
            ],
          ),
        ),
      );
    }


     Widget body() {
      switch (currentIndex) {
        case 0:
          return HomeSceeen();
          break;
        case 1:
          return WishlistScreen();
          break;
        case 2:
          return ShopScreen();
          break;
        case 3:
          return ProfileScreen();
          break;

        default:
          return HomeSceeen();
      }
    }
    

    return Scaffold(
    
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
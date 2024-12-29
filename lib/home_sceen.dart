import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/tabs/quran/quran_tab.dart';
import 'package:islami_app/tabs/radio/radio_page.dart';

import 'package:islami_app/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/tabs/sound/sound_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioPage(),
    SoundTab(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[currentIndex],

      

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          currentIndex = index;
          setState(() {});
          
        },
        items: [
      BottomNavigationBarItem(icon:
       SvgPicture.asset('assets/icons/quran.svg'),
       label: 'quran',
       activeIcon: SvgPicture.asset('assets/icons/quran.svg',
       colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),), ),

       BottomNavigationBarItem(icon:
       SvgPicture.asset('assets/icons/hadeth.svg'),
       label: 'hadeth',
       activeIcon: SvgPicture.asset('assets/icons/hadeth.svg',
       colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),), ),

BottomNavigationBarItem(icon:
       SvgPicture.asset('assets/icons/sebha.svg'
       ,colorFilter:ColorFilter.mode(Colors.black, BlendMode.srcIn) ,),
       label: 'sebha',
       activeIcon: SvgPicture.asset('ssets/icons/sebha.svg',
       colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),), ),

BottomNavigationBarItem(icon:
       SvgPicture.asset('assets/icons/radio.svg'),
       label: 'radio',
       activeIcon: SvgPicture.asset('assets/icons/radio.svg',
       colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),), ),

BottomNavigationBarItem(icon:
       SvgPicture.asset('assets/icons/sound.svg'),
       label: 'sound',
       activeIcon: SvgPicture.asset('assets/icons/sound.svg',
       colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),), ),


       

      ],),
             
                
            
              
            
          );
          
        
      

    
  }
}
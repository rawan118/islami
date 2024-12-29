import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SebhaTab extends StatefulWidget {
  
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
int counter = 0;
 late String  text = '';
  
 
 int sum = 0;
 
void _incrementCounter(){
  setState(() {
    
  
  sum++;
            if(sum==0){
              text= 'سبحان الله';
            
            }
            if(sum== 30){
              text= 'الحمد لله';

            }
            if(sum== 60){
              text= 'الله اكبر';
            }
            else{
              sum= 0;
            }
            print('8888888888');
            print(sum);
  });
  
    
       if (counter < 30) {
          
          setState(() {
            counter++;
            

          }

          );
          
           
        } else {
          counter = 0; // Reset when reaching 30
        }

      
    
  }


@override
  void initState() {
    counter = 0;
    sum=0;
    text= 'سبحان الله';
    
    
    
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset('assets/images/Background.png',
          fit: BoxFit.fill,)),
          Column(
           
            children: [
              Center(child: Image.asset('assets/images/header.png')),
              Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى',style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.08,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  children: [
                    SvgPicture.asset('assets/icons/SebhaBody 1.svg'),
                    Column(
                      children: [
                    
                    Container(
                      padding: EdgeInsets.only(top: 130),
                      child: Text(text, style: TextStyle(color: Colors.white,
                      fontSize: 40,fontWeight: FontWeight.bold),),
                    ),

                    Center(
                      child: GestureDetector(
                
                        onTap: 
                          _incrementCounter,
                          child: Text(counter.toString(),style: TextStyle(color: Colors.white,
                        fontSize: 40,fontWeight: FontWeight.bold),),

                        

                        
                        
                      ),
                    ),
  
                      ]
                    )
                  ],
                ),
              ),
            ],
          )
      ],
    ); 
          

  
  }
}


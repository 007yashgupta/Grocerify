
import 'package:flutter/material.dart';



class MySplashScreen extends StatelessWidget {

  static const routeName = '/my_splash_screen';

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(162,89,255,1),
     
      
        // alignment: Alignment.topLeft,
        // padding: EdgeInsets.fromLTRB(20, 63, 0, 0),
        // padding:const EdgeInsets.fromLTRB(20, 63, 0, 0),
        body: Column(
          
          children: [
            SizedBox(height: 80,),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  
                  child: Center(
                    child: Text('D',style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                       color: Color.fromRGBO(140, 51, 255, 3),
                      
                    
                    ),),
                  ),
                  
                  height: 100,
                  width: 65,
                  decoration: const BoxDecoration(
                  
                    
                    
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(205, 255, 182, 2)
                    
                  ),
                ),
              ],

            ),
            SizedBox(
              height: 75,
            ),
             Container(
              height: MediaQuery.of(context).size.height*0.639,
              width: MediaQuery.of(context).size.height*1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                      // SizedBox(
                      //   height: 30,
                      //   width: 10,
                      // ),
                   Expanded(
                     child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/Icon_splash.png',fit: BoxFit.fill,),
                                   //              SizedBox(
                                   //   height:8
                                   // ),
                                    Center(
                                      child: Text(
                      'Non-Contact\n\t\tDeliveries '
                       
                      ,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                      
                                       ),
                                    ),
                                     SizedBox(height: 3,),
                                     Text('\t\tWhen placing an order, select the option\n “Contactless delivery” and the courier will\n\t leave your order at the door.',
                                       style: TextStyle(
                      
                      color: Color.fromRGBO(149, 134, 168, 1),
                      fontSize: 15,
                                       ),),
                                     
                                     SizedBox(height: 10,),
                                     Column(
                                       children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        
                        ),
                        width: double.infinity,
                        child: TextButton(onPressed: (){},style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith((states) {
                            if(states.contains(states.firstOrNull)) {
                              return Color.fromRGBO(11, 206, 131, 1);
                            }
                            return Colors.blue;
                          })
                        
                        ), child: Text('ORDER NOW'),),
                      ),
                      
                         Container(
                          width: double.infinity,
                           child: TextButton(onPressed: (){}, child: Text('Dismiss'),
                           style: ButtonStyle(
                            
                            overlayColor:  MaterialStateProperty.resolveWith((states) {
                            if(states.contains(states.firstOrNull)) {
                              return Color.fromRGBO(11, 206, 131, 1);
                            }
                            return Colors.blue;
                                                   })
                           ),),
                         ),
                                       ],
                                     
                     
                                     ),
                                   
                          ],
                        ),
                   ),


                    

                  ],
                ),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  
                  border: Border.all(
                    width: 1,
                    
              
                  ),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),),
                ),
              ),
             
              
            
          ],
        )
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/bottombarscreen/menu/ourpartymenu/partymenu.dart';
import 'package:the29029restaurant/widgets/my_button.dart';
class Starters extends StatefulWidget {
  const Starters({super.key});

  @override
  State<Starters> createState() => _StartersState();
}

class _StartersState extends State<Starters> {
  var choose =2;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PartyMenu(),
                ));
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Starters",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height*0.01),
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,width: 100,
                      child: ElevatedButton(
                        onPressed: (){
                          choose = 1;
                          setState(() {
                            // click = !click;
                          });
                        },
                        child: Text("Description",
                          style: TextStyle(
                              color:  choose == 1 ?  Colors.white : Color(0xff911FDA),
                            fontSize: 12,fontFamily: GoogleFonts.outfit().fontFamily
                          ),),
                        style:
                        ElevatedButton.styleFrom(backgroundColor: choose == 1 ?Color(0xff911FDA): Colors.white,
                            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color:Color(0xff911FDA)
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,width: 100,
                      child: ElevatedButton(
                        onPressed: (){
                          choose = 2 ;
                          setState(() {
                            //click1 = !click1;
                          });
                        },
                        child: Text("Comments",
                          style: TextStyle(
                              color:  choose == 2 ?  Colors.white : Color(0xff911FDA),
                            fontSize: 12,fontFamily: GoogleFonts.outfit().fontFamily
                          ),),
                        style:
                        ElevatedButton.styleFrom(backgroundColor: choose == 2 ?Color(0xff911FDA): Colors.white,
                            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color:Color(0xff911FDA)
                                )
                            )
                        ),
                      ),
                    ),


                    // MyButton(title:"Description", onTap: (){}, height: 35, width: 120),
                    // MyButton(title:"Comments", onTap: (){}, height: 35, width: 120)
                  ],

                ),
              ),
              SizedBox(height:height*0.03),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Color(0xffF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListTile(
                      title:Text("Pot Roasted Lamb Katti:",
                      style:Theme.of(context).textTheme. bodyLarge?.copyWith(
                        color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.outfit().fontFamily
                      ) ,),
                      subtitle: Text("Seasoned with mint,sweet chill,coriander and sesane",
                        style:Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xff9796A1),
                          fontFamily: GoogleFonts.outfit().fontFamily
                        ) ,),
                    ),

                  );

                }
              )
            ],
          ),
        ),
      ),

    );
  }
}

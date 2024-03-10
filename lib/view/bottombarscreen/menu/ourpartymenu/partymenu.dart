import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:the29029restaurant/view/bottombarscreen/menu/menu.dart';


import 'package:the29029restaurant/view/bottombarscreen/menu/ourpartymenu/starters.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';

//var parse;

class PartyMenu extends StatefulWidget {
  const PartyMenu({super.key});

  @override
  State<PartyMenu> createState() => _PartyMenuState();
}

class _PartyMenuState extends State<PartyMenu> {


  // PartyMenuModel partyMenuModel =PartyMenuModel( );
  //
  // PartyMenu data = PartyMenu();
  //
  // Party()async{
  //   try{
  //     Map data={
  //       "party_menu":"party_menu_api"
  //     };
  //     final response = await http.post(
  //       Uri.parse(partmenu),body: data
  //     );
  //     print(jsonDecode(response.body));
  //      parse = jsonDecode(response.body);
  //     print(parse);
  //
  //     if (response.statusCode != 200){
  //       return PartyMenuModel.fromJson(parse);
  //     }
  //     setState(() {
  //       // partymenumodel=PartyMenuModel.fromJson(parse);
  //
  //     });
  //   } on Exception catch (e){
  //          print(e);
  //   }
  // }

@override
  // void initState() {
  //   Party();
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.to(() => TabScreen(index: 1));
          },
          child: Image.asset("assets/images/backbutton.png"),
        ),
        title: Text("Party Menu",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        centerTitle: true,
        actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search_sharp,
              color: Color(0xff911FDA),
            ),
          )
        ],
      ),


      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              height: height,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder:(BuildContext context,int index){
                    return
                      Padding(
                      padding: EdgeInsets.symmetric(vertical:height*0.01),
                      child: Container(
                        // height:height*0.3,
                        width: width,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Color(0xffF5F5F5)) ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          // SizedBox(height: height*0.02),
                            Padding(
                              padding: EdgeInsets.only(left:20,bottom:height*0.02,top:height*0.02 ),
                              child: Text("Party Menu A",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: GoogleFonts.outfit().fontFamily),
                              ),
                            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 2,
                itemBuilder:(BuildContext context,int index){
                  return  Padding(
                      padding: const EdgeInsets.only(bottom:2,right:20,left:20),
                      child: Container(
                      height:20,
                      width: width,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Starters(),
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Starters",
                              style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                    color: Color(0xff9796A1),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    fontFamily:
                                    GoogleFonts.outfit().fontFamily)
                          ),
                        Icon( Icons.arrow_right_alt_outlined,
                              color: Color(0xff911FDA))
                        ],),

                      ),
                      ),

                  );
                },
                ),
                            SizedBox(height: height*0.03)
                          ],
                        ),
                      ),
                      );

                  },

              ),
            )

                            // ListTile(
                            //   //minVerticalPadding: height*0.03,
                            //   //visualDensity: VisualDensity(vertical:4),
                            //   leading: Text("Starters",
                            //     style: Theme.of(context)
                            //         .textTheme
                            //         .bodyLarge
                            //         ?.copyWith(
                            //         color: Color(0xff9796A1),
                            //         fontSize: 14,
                            //         fontWeight: FontWeight.w300,
                            //         fontFamily:
                            //         GoogleFonts.outfit().fontFamily)
                            // ),
                            //   trailing: Icon( Icons.arrow_right_alt_outlined,
                            //       color: Color(0xff911FDA)
                            //   ),
                            // ),
                            // ListTile(
                            //
                            //   leading: Text("Main Course",
                            //     style: Theme.of(context)
                            //         .textTheme
                            //         .bodyLarge
                            //         ?.copyWith(
                            //         color: Color(0xff9796A1),
                            //         fontSize: 14,
                            //         fontWeight: FontWeight.w300,
                            //         fontFamily:
                            //         GoogleFonts.outfit().fontFamily)
                            // ),
                            //   trailing: Icon( Icons.arrow_right_alt_outlined,
                            //       color: Color(0xff911FDA)
                            //   ),
                            // )



            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     SizedBox(height: height * 0.03),
            //     Container(
            //       height: 121,
            //       width: 335,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Color(0xffF5F5F5),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 20, left: 20),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(height: height * 0.02),
            //             Text(
            //               //parse["party_menu"][0]["category_name"],
            //                "Party Menu A",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .titleMedium
            //                   ?.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.w600,
            //                       fontFamily: GoogleFonts.outfit().fontFamily),
            //             ),
            //             SizedBox(height: height * 0.005),
            //             GestureDetector(
            //               onTap: (){
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => Starters(),
            //                     ));
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Starters",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                   Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             GestureDetector(
            //               onTap: (){ },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Main Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                  Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                    color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(height: height * 0.01),
            //     Container(
            //       height: 165,
            //       width: 335,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Color(0xffF5F5F5),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 20, left: 20),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SizedBox(height: height * 0.02),
            //             Text(
            //               "Party Menu B",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .titleMedium
            //                   ?.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.w600,
            //                       fontFamily: GoogleFonts.outfit().fontFamily),
            //             ),
            //             SizedBox(height: height * 0.005),
            //             GestureDetector(
            //               onTap: (){
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => Starters(),
            //                     ));
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Starters",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                        Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //  SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){},
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Main Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                    Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             // SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){},
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Side Dishes",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                 Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){},
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Final Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                  Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(height: height * 0.01),
            //     Container(
            //       height: 165,
            //       width: 335,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Color(0xffF5F5F5),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 20, left: 20),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SizedBox(height: height * 0.02),
            //             Text(
            //               "Party Menu C",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .titleMedium
            //                   ?.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.w600,
            //                       fontFamily: GoogleFonts.outfit().fontFamily),
            //             ),
            //             SizedBox(height: height * 0.005),
            //             GestureDetector(
            //               onTap: (){
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => Starters(),
            //                     ));
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Starters",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                         Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             // SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Main Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                   Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Side Dishes",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                   Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //  SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Final Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                   Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(height: height * 0.01),
            //     Container(
            //       height: 165,
            //       width: 335,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Color(0xffF5F5F5),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.only(right: 20, left: 20),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SizedBox(height: height * 0.02),
            //             Text(
            //               "New Year Menu",
            //               style: Theme.of(context)
            //                   .textTheme
            //                   .titleMedium
            //                   ?.copyWith(
            //                       color: Colors.black,
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.w600,
            //                       fontFamily: GoogleFonts.outfit().fontFamily),
            //             ),
            //             SizedBox(height: height * 0.005),
            //             GestureDetector(
            //               onTap: (){
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                       builder: (context) => Starters(),
            //                     ));
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Starters",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                    Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Accompaniments",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                    Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Main Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                    Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //             //SizedBox(height:height*0.01),
            //             GestureDetector(
            //               onTap: (){
            //
            //               },
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("Final Course",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyLarge
            //                           ?.copyWith(
            //                               color: Color(0xff9796A1),
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w300,
            //                               fontFamily:
            //                                   GoogleFonts.outfit().fontFamily)),
            //                   Icon(
            //                         Icons.arrow_right_alt_outlined,
            //                         color: Color(0xff911FDA),
            //                       )
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       height: height * 0.05,
            //     )
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}

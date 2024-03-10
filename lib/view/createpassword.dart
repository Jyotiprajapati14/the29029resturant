import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/view/verificationcode.dart';
import 'package:the29029restaurant/widgets/my_button.dart';


class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  bool passwordVisible = true;
  bool confirmpasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) =>VerificationCode()));
        },
          child: Image.asset("assets/images/backbutton.png"),
        )
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.01),
                Center(
                  child: Text(
                    "Create Password",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 30,fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                  ),
                ),
                SizedBox(height: height * 0.001),
                Center(
                  child: Text(
                    "Please create a New password",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Color(0xff9796A1),fontSize:14,fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Text(
                  "New Password",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.005),
                TextFormField(
                  controller: passwordController,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: " Enter Password",
                      hintStyle:
                      Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xffD0D2D1),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xff9796A1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xff9796A1))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff9796A1)))
                  ),
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter the valid password';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Confirm Password",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.005),
                TextFormField(
                  controller: confirmpasswordController,
                  obscureText: confirmpasswordVisible,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: " Confirm Password",
                      hintStyle:
                      Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          confirmpasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xffD0D2D1),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              confirmpasswordVisible = !confirmpasswordVisible;
                            },
                          );
                        },
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xff9796A1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xff9796A1))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff9796A1)))
                  ),
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter the confirm valid password';
                    }
                    if (passwordController.text !=
                        confirmpasswordController.text) {
                      return 'password do not match';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: MyButton(
                      bgColor: Color(0xff41004C),
                      title: 'Continue',
                      txtStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: GoogleFonts.outfit().fontFamily),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _submit();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        }
                      },
                      height: 50,
                      width: 200),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

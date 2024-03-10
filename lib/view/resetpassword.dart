import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/view/verificationcode.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController emailController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(onTap: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage()));
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
                  "Reset Password",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                )),
                SizedBox(height: height * 0.001),
                Center(
                  child: Text(
                    "Please enter your email address to request a\npassword reset",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Color(0xff9796A1),fontSize: 14,fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Text(
                  "E-mail",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.outfit().fontFamily)
                ),
                SizedBox(height: height * 0.005),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter email",
                      hintStyle:   Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.w300,
                        fontFamily: GoogleFonts.outfit().fontFamily,
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xffDCDCDC))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                          BorderSide(color: Color(0xffDCDCDC))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xffDCDCDC)))
                  ),
                  onFieldSubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'enter the vaild email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: height * 0.05),
                Center(
                  child: MyButton(
                      bgColor: Color(0xff41004C),
                      title: "Send",
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
                                builder: (context) => VerificationCode(),
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

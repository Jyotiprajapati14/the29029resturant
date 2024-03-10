import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_pinput/new_pinput.dart';
import 'package:the29029restaurant/view/createpassword.dart';
import 'package:the29029restaurant/view/resetpassword.dart';
import 'package:the29029restaurant/widgets/my_button.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

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
              .push(MaterialPageRoute(builder: (context) =>ResetPassword()));
        },
          child: Image.asset("assets/images/backbutton.png"),
        )
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.01),
                Text(
                  "Verification Code",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 30, fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.001),
                Text(
                  "Please type the verification code send to userdemo@gmail.com",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Color(0xff9796A1),fontWeight: FontWeight.w300,fontSize:14,
                      fontFamily: GoogleFonts.outfit().fontFamily),
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Directionality(
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          length: 6,
                          controller: pinController,
                          focusNode: focusNode,
                          androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                          listenForMultipleSmsOnAndroid: true,
                          validator: (value) {
                            return value == '222222'
                                ? null
                                : 'Pin is incorrect';
                          },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 20,
                                height: 2,
                                color: Color.fromRGBO(23, 171, 144, 1),
                              ),
                            ],
                          ),
                          defaultPinTheme: PinTheme(
                            width: 45,
                            height: 45,
                            textStyle: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(30, 60, 87, 1),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(23, 171, 144, 0.4)),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "I don't recevie a code!",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: Color(0xff5B5B5E),fontWeight: FontWeight.w300,fontSize: 12,
                                  fontFamily: GoogleFonts.outfit().fontFamily)),
                      TextSpan(
                          text: " Please resend",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Color(0xff41004C),
                              fontWeight: FontWeight.w300,fontSize: 12,
                              fontFamily: GoogleFonts.outfit().fontFamily,
                              decoration: TextDecoration.underline
                              ),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ])),
                  ],
                ),
                SizedBox(height: height * 0.05),
                MyButton(
                    bgColor: Color(0xff41004C),
                    title: "Verify",
                    txtStyle: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: GoogleFonts.outfit().fontFamily),
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        focusNode.unfocus();
                        formKey.currentState!.validate();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatePassword(),
                            ));
                      }
                    },
                    height: 50,
                    width: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

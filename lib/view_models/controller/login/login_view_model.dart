import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:the29029restaurant/repository/Auth_Reposetory/auth_reposetory.dart';

import 'package:the29029restaurant/res/routes/routes_name.dart';
import 'package:the29029restaurant/utils/utils.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/bottomnavigation.dart';
import 'package:the29029restaurant/view/bottomnavigationbar/tab_screen.dart';
import 'package:the29029restaurant/view/login.dart';
import 'package:the29029restaurant/view_models/controller/user_preference/user_prefrence_view_model.dart';

class Login_controller extends GetxController {


  final _api = AuthRepository();

  // UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;


  void Login_apihit(){
    loading.value = true ;
    Map data = {

      'email' : emailController.value.text,
      'password' : passwordController.value.text

    };
    _api.Loginapi(data).then((value){
      loading.value = false ;

      Get.to(TabScreen(index:0,));

      Utils.snackBar('Login', 'Login successfully');


    }).onError((error, stackTrace){
      loading.value = false ;
      Utils.snackBar('Error', error.toString());
    });
  }
}
/// ***********************************
/// * Copyright © 2025 Aziz Athimni. *
/// * All rights reserved.             *
/// ***********************************

import 'package:event_project/controller/forgetpassword/resetpassword_controller.dart';
import 'package:event_project/core/class/handlingdataview.dart';
import 'package:event_project/core/constant/colors.dart';
import 'package:event_project/core/functions/validinput.dart';
import 'package:event_project/view/widget/auth/custombuttonauth.dart';
import 'package:event_project/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/auth/customtextbodyauth.dart';
import '../../../widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Appcolor.bkcolor,
      appBar: AppBar(
        backgroundColor: Appcolor.bkcolor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading:  IconButton(onPressed: () { Get.back(); }, icon: const  Icon(Icons.arrow_back_ios) ,),
      ),
      body: SafeArea(
          child: GetBuilder<ResetPasswordControllerImp>(builder: ((controller) => 
          HandlingDataRequest(statusRequest:  controller.statusRequest , widget: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              CustomTextTitleAuth(
                text: "32".tr,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              CustomtextBodyAuth(
                text: "33".tr,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 25),
              CustomTextFormAuth(
                valid: (val){
                  return (validInput(val!, 8, 30, 'password'));
                } ,
                isNumber: false,
                mycontroller: controller.password,
                hinttext: "32".tr,
                labeltext: "14".tr,
                icondata: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              CustomTextFormAuth(
                valid: (val){
                  return (validInput(val!, 8, 30, 'password'));
                } ,
                isNumber: false,
                mycontroller: controller.repassword,
                hinttext: "34".tr,
                labeltext: "14".tr,
                icondata: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              CustomButtonAuth(
                  text: "35".tr,
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  },
                ),
            ],
          ),
        ),
      ))),
    )));
  }
}

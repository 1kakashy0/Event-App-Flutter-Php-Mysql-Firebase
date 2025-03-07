/// ***********************************
/// * Copyright © 2025 Aziz Athimni. *
/// * All rights reserved.             *
/// ***********************************


import 'package:event_project/core/class/crud.dart';
import 'package:event_project/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);
  postdata(
    String email ,
    String verifycode ) async {
    var response = await crud.postData(AppLink.verifycodesignup, {
      "email" : email ,
      "verifycode" : verifycode ,
    });
    return response.fold((l) => l, (r) => r);
  }

  resendData(String email) async {
    var response = await crud.postData(AppLink.resend, {"email": email});
    return response.fold((l) => l, (r) => r);
  }
}
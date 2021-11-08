
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:newdummybitesbee/reusewidget/forbutton.dart';
import 'package:newdummybitesbee/reusewidget/fortextformfield.dart';
import 'package:get/get.dart';
import '../mypage.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyTextFormField(
                hintText: "hello",
              ),
              const MyTextFormField(
                hintText: "Email",
              ),
              const MyTextFormField(
                hintText: "Password",
                isPassword: true,
              ),
              Button(
                onPressed:(){
                  Get.to(const MyPage());
                },
                text: "data",
              )
            ],
          ),
        ),
      ),
    );
  }
}

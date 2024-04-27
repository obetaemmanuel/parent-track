import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parent_ward/constants/app_colors.dart';
import 'package:parent_ward/constants/header_text.dart';
import 'package:parent_ward/pages/signup/complete_signup.dart';
import 'package:parent_ward/utilis/custom_button.dart';
import 'package:parent_ward/utilis/custom_textfield.dart';
import 'package:parent_ward/utilis/drop-down_menu.dart';

class SignUpView extends StatefulWidget {
  final VoidCallback onTap;
  const SignUpView({super.key, required this.onTap});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController pfirstnameController = TextEditingController();
  TextEditingController plastnameController = TextEditingController();
  TextEditingController pemailController = TextEditingController();

  bool isClicked = false;

  void toggleClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  color: AppColors.whiteColor,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: 166.w,
                        ),
                        // sign up text
                        const HeaderText(
                          text: 'Sign Up',
                          fontSize: 24,
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        // username textfield
                        CustomTextField(
                          controller: usernameController,
                          optionText: 'Username',
                          hintText: 'Obinna Eze',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // first name textfield
                        CustomTextField(
                          controller: pfirstnameController,
                          optionText: 'First Name',
                          hintText: 'Obinna Eze',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // last name textfield
                        CustomTextField(
                          controller: plastnameController,
                          optionText: 'Last Name',
                          hintText: 'Obinna Eze',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // email textfield
                        CustomTextField(
                          controller: pemailController,
                          optionText: 'Email',
                          hintText: 'obinnaezee@yahoo.com',
                          obscureText: false,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // who are you... textfield
                        DropDownField(
                          onTap: toggleClicked,
                          isClicked: isClicked,
                        ),
                        SizedBox(
                          height: !isClicked ? 35.h : 5.h,
                        ),
                        // button
                        CustomButton(
                            buttonText: 'Continue',
                            onTap: () {
                              bool error = false;

                              try {
                                final form = Form.of(context);

                                error = form.validate();
                                if (!error == false) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CompleteSignUpView()));
                                } else {
                                  return null;
                                }
                              } catch (e) {
                                // no-op
                              }
                              return;
                            }),
                        SizedBox(
                          height: 25.h,
                        ),
                        // already have an account text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w300,
                                fontSize: 16.sp,
                                color: AppColors.blackColor,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            GestureDetector(
                              onTap: widget.onTap,
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: AppColors.buttonColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

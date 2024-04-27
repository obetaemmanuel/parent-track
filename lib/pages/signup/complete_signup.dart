import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parent_ward/constants/app_colors.dart';
import 'package:parent_ward/constants/header_text.dart';
import 'package:parent_ward/constants/header_text_tiny.dart';
import 'package:parent_ward/utilis/custom_button.dart';
import 'package:parent_ward/utilis/custom_textfield.dart';

class CompleteSignUpView extends StatefulWidget {
  const CompleteSignUpView({super.key});

  @override
  State<CompleteSignUpView> createState() => _CompleteSignUpViewState();
}

class _CompleteSignUpViewState extends State<CompleteSignUpView> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController registernumController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // complete sign up text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: const HeaderText(
                          text: 'Complete Sign Up',
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      // fill in the details...text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: const HeaderTextTiny(
                          text: 'Fill in details about your ward',
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      // first name textfield
                      CustomTextField(
                        controller: firstnameController,
                        optionText: 'First Name',
                        hintText: 'First name of your ward',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // last name textfield
                      CustomTextField(
                        controller: lastnameController,
                        optionText: 'Last Name',
                        hintText: 'Last name of your ward',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // Department textfield
                      CustomTextField(
                        controller: departmentController,
                        optionText: 'Department',
                        hintText: 'Department of your ward',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // reg no text
                      CustomTextField(
                        controller: registernumController,
                        optionText: 'Registration Number',
                        hintText: 'Registration number of your ward',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // email textfield
                      CustomTextField(
                        controller: emailController,
                        optionText: 'Email',
                        hintText: 'Email address of your ward',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // create password
                      CustomTextField(
                        controller: passwordController,
                        optionText: 'Create Password',
                        hintText: 'Enter your password',
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      // button
                      CustomButton(
                        buttonText: 'Sign Up',
                        onTap: () {},
                      ),
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
                            onTap: () {},
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
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

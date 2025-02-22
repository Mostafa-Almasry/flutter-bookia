import 'package:bookia_task/core/colors.dart';
import 'package:bookia_task/core/text_styles.dart';
import 'package:bookia_task/feature/auth/presentation/page/forgot_screen.dart';
import 'package:bookia_task/feature/auth/presentation/page/register_screen.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/custom_button.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
          backgroundColor: AppColors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.greyColor, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.zero,
                ),
                child: Icon(Icons.arrow_back_ios_new_outlined)),
          )),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back! Glad to see you, Again!',
                      style: AppTextStyles.heading,
                    ),
                    SizedBox(height: 40),
                    InputField(hint: "Enter your email",keyboardType: TextInputType.emailAddress),
                    SizedBox(height: 16),
                    InputField(hint: "Enter your password", keyboardType: TextInputType.visiblePassword, isPassword: true),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotScreen()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: AppTextStyles.smallText,
                        ),
                      ),
                    ),
                    CustomButton(onPressed: () {}, text: 'Login'),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                                thickness: 1, color: AppColors.greyColor)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or Login with",
                              style: AppTextStyles.smallText),
                        ),
                        Expanded(
                            child: Divider(
                                thickness: 1, color: AppColors.greyColor)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyColor, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 50,
                            child: IconButton(
                              icon: Image.asset('assets/facebook.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyColor, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 50,
                            child: IconButton(
                              icon: Image.asset('assets/google.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyColor, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 50,
                            child: IconButton(
                              icon: Image.asset('assets/apple.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: AppTextStyles.question),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text('Register Now',
                        style: AppTextStyles.primaryQuestion),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

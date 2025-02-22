import 'package:bookia_task/core/colors.dart';
import 'package:bookia_task/core/text_styles.dart';
import 'package:bookia_task/feature/auth/presentation/page/login_screen.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/custom_button.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
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
                      'Forgot Password?',
                      style: AppTextStyles.heading,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Don't worry! It occurs. Please enter the email address linked with your accound",
                      style: AppTextStyles.subHeading,
                    ),
                    SizedBox(height: 25),
                    InputField(
                      hint: "Enter your email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(onPressed: () {}, text: 'Send Code'),
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
                  Text("Remember Password?", style: AppTextStyles.question),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child:
                        Text('Login Now', style: AppTextStyles.primaryQuestion),
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

import 'package:bookia_task/core/colors.dart';
import 'package:bookia_task/core/text_styles.dart';
import 'package:bookia_task/feature/auth/presentation/page/login_screen.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/custom_button.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello! Register to get started',
                      style: AppTextStyles.heading,
                    ),
                    SizedBox(height: 40),
                    InputField(hint: "Username"),
                    SizedBox(height: 16),
                    InputField(
                      hint: "Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 16),
                    InputField(
                      hint: "Password",
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: 16),
                    InputField(
                        hint: "Confirm password",
                        keyboardType: TextInputType.visiblePassword),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(onPressed: () {}, text: 'Register'),
                    SizedBox(height: 20),
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
                  Text("Already have an account?",
                      style: AppTextStyles.question),
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

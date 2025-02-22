import 'package:bookia_task/core/colors.dart';
import 'package:bookia_task/feature/auth/presentation/page/login_screen.dart';
import 'package:bookia_task/feature/auth/presentation/page/register_screen.dart';
import 'package:bookia_task/feature/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_rounded,
                        size: 63,
                        color: AppColors.primaryColor,
                      ),
                      Text('Bookia',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 55, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Order Your Book Now!',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Spacer(flex: 4),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }),
                  SizedBox(height: 10),
                  CustomOutlinedButton(
                      text: 'Register',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      }),
                  SizedBox(height: 30)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     super.key,
//     required this.context,
//   });

//   final BuildContext context;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => LoginScreen()));
//         },
//         style: ElevatedButton.styleFrom(
//             backgroundColor: AppColors.primaryColor,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
//         child: Text(
//           'Login',
//           style: GoogleFonts.playfairDisplay(
//             fontSize: 20,
//             color: AppColors.white,
//           ),
//         ));
//   }
// }

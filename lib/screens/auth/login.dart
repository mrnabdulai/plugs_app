import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:plugs_app/screens/auth/forgot_password.dart';
import 'package:plugs_app/screens/auth/signup.dart';
import 'package:plugs_app/screens/home/botton_nav_screen.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/pg_input_field.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/widgets/pg_primary_button.dart';

import '../../dummy_data/credentials.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordIsVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passowrdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 34.0.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 70.h),
            PGInputField(
              controller: _emailController,
              hintText: "Email",
              icon: IconButton(
                  onPressed: () {},
                  icon:
                      const Iconify(Majesticons.mail, color: primaryIconColor)),
            ),
            SizedBox(height: 30),
            PGInputField(
              obscureText: !_passwordIsVisible,
              controller: _passowrdController,
              hintText: "Password",
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordIsVisible = !_passwordIsVisible;
                  });
                },
                icon: _passwordIsVisible
                    ? Iconify(
                        Majesticons.eye,
                        color: primaryIconColor,
                      )
                    : Iconify(
                        Majesticons.eye_off,
                        color: primaryIconColor,
                      ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ],
                ),
                onPressed: () {


                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()));

                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: PGPrimaryButton(
                    onPress: () {
                      if (_emailController.text != LoginCredentials.email ||
                          _passowrdController.text != LoginCredentials.password) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            "Wrong credentials",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.red,
                        ));
                        return;
                      }
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ),
                          (route) => false);
                    },
                    text: "LOGIN")),
            addVerticalSpace(8.h),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                          (route) => false);
                    },
                    child: Text(
                      "New to Plug Me ? Sign Up",
                      style: TextStyle(color: primaryColor),
                    ))),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Or login with social account",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: primaryLightBgColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.05),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/google_icon.png",
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: primaryLightBgColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.05),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset("assets/fb_icon.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

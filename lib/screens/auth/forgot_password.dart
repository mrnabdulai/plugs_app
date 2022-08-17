import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/widgets/pg_input_field.dart';
import 'package:plugs_app/widgets/pg_primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 90.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 34.0.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 70),

            Text("Please, enter your email address. You will receive a link to create a new password via email."),

            SizedBox(height: 15,),
            PGInputField(
              controller: null,
              hintText: "Email",
              icon: IconButton(
                  onPressed: () {},
                  icon:
                  const Iconify(Majesticons.mail, color: primaryIconColor)),
            ),
            SizedBox(height: 30,),

            Center(child: PGPrimaryButton(onPress: () {}, text: "SEND")),

          ],
        ),
      ),
    );
  }
}

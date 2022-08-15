import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 70),
              Text("Please, enter your email address. You will receive a link to create a new password via email."),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    )),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: Text(
                  "SEND",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plugs_app/screens/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                "Sign Up",
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 70),
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
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    )),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account?",
                      ),
                      Icon(
                        Icons.arrow_forward,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW

                ),
                onPressed: () {},
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 60,),
              Center(
                child: Text(
                  "Or sign up with social account",
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
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow (
                          color: Color(0xFF000000).withOpacity(0.05),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 3.0,
                        ),

                      ],
                    ),
                    child: Center(
                      child: Image.asset("assets/google_icon.png", ),

                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 92,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow (
                          color:  Color(0xFF000000).withOpacity(0.05),
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
      ),
    );
  }
}

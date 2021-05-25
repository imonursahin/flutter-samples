import 'package:flutter/material.dart';
import 'package:hitchion/Screens/FirstScreens/Login/components/background.dart';
import 'package:hitchion/Screens/FirstScreens/PasswordReset/passreset_screen.dart';
import 'package:hitchion/Screens/FirstScreens/Signup/signup_screen.dart';
import 'package:hitchion/Screens/HomeScreen/home.dart';
import 'package:hitchion/components/FirstScreens_components/already_have_an_account_acheck.dart';
import 'package:hitchion/components/FirstScreens_components/pass_reset_check.dart';
import 'package:hitchion/components/FirstScreens_components/rounded_button.dart';
import 'package:hitchion/components/FirstScreens_components/rounded_input_field.dart';
import 'package:hitchion/components/FirstScreens_components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            PassResetCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PasswordReset();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

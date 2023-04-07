import 'package:crieya_works/components/already_have_an_account_check.dart';
import 'package:crieya_works/components/rounded_button.dart';
import 'package:crieya_works/components/rounded_input_field.dart';
import 'package:crieya_works/components/rounded_password_field.dart';
import 'package:crieya_works/constants.dart';
import 'package:crieya_works/screens/login/login_screen.dart';
import 'package:crieya_works/screens/otp/otp_screen.dart';
import 'package:crieya_works/screens/signup/components/background.dart';
import 'package:crieya_works/screens/signup/components/on_divider.dart';
import 'package:crieya_works/screens/signup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            /////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),
            ////////////////////////////
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            ////////////////////////////////////
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            /////////////////////////////////////////
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            //////////////////////

            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Otpscreen();
                    },
                  ),
                );
              },
            ),

            /////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),
            /////////////////////////////

            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OnDivider(),
            /////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /////////////////////////////////////////////////////////////////////////////
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),

                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),

                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:crieya_works/components/already_have_an_account_check.dart';
import 'package:crieya_works/components/rounded_button.dart';
import 'package:crieya_works/components/rounded_input_field.dart';
import 'package:crieya_works/components/rounded_password_field.dart';
import 'package:crieya_works/screens/login/components/background.dart';
import 'package:crieya_works/screens/signup/signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            ////////////////////////////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),

            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.45,
            ),
            /////////////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              ///////provide labelText later//////////////////////////////////////////////////////////////////////////////////////////////////////////
              onChanged: ((value) {}),
            ),
            ///////////////////////////////////////
            RoundedPasswordField(
              onChanged: (value) {},
            ),

            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),

            SizedBox(
              height: size.height * 0.03,
            ),

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

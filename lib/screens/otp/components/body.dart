// import 'package:crieya_works/screens/otp/components/background.dart';
// import 'package:flutter/material.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Background(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("OTP Verification"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:crieya_works/components/already_have_an_account_check.dart';
// import 'package:crieya_works/components/rounded_button.dart';
// import 'package:crieya_works/components/rounded_input_field.dart';
// import 'package:crieya_works/components/rounded_password_field.dart';
// import 'package:crieya_works/components/text_field_container.dart';
// import 'package:crieya_works/constants.dart';
// import 'package:crieya_works/screens/signup/signup_screen.dart';
import 'package:crieya_works/screens/otp/components/background.dart';

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
              "OTP Verification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            ////////////////////////////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),

            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.25,
            ),

            SizedBox(
              height: size.height * 0.03,
            ),

            const Text(
              "Enter your 6 Digit Verification code",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),

            /////////////////////////////////////////
            // SizedBox(
            //   height: size.height * 0.03,
            // ),
            // RoundedInputField(
            //   hintText: "Your Email",
            //   ///////provide labelText later//////////////////////////////////////////////////////////////////////////////////////////////////////////
            //   onChanged: ((value) {}),
            // ),
            ///////////////////////////////////////
            // RoundedPasswordField(
            //   onChanged: (value) {},
            // ),

            // RoundedButton(
            //   text: "LOGIN",
            //   press: () {},
            // ),

            // SizedBox(
            //   height: size.height * 0.03,
            // ),

            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

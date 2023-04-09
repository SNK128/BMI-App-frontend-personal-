// import 'package:crieya_works/components/already_have_an_account_check.dart';
// import 'package:crieya_works/components/rounded_button.dart';
// import 'package:crieya_works/components/rounded_input_field.dart';
// import 'package:crieya_works/components/rounded_password_field.dart';
// import 'package:crieya_works/components/text_field_container.dart';
// import 'package:crieya_works/constants.dart';
// import 'package:crieya_works/screens/signup/signup_screen.dart';
import 'package:crieya_works/screens/otp/components/background.dart';
import 'package:crieya_works/screens/otp/components/otp_verification.dart';

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/otpimg.jpg",
              width: size.width * 0.5,
              height: size.height * 0.34,
            ),

            /////////////////////////////////////

            SizedBox(
              height: size.height * 0.03,
            ),

            /////////////////////////////////////
            const Text(
              "Phone Verification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            ////////////////////////////////////////////////////////
            SizedBox(
              height: size.height * 0.03,
            ),

            ////////////////////////////////////////////////

            const Text(
              "We need to register your phone number before getting started! ",
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: size.height * 0.05,
            ),

            Container(
              height: size.height * 0.08,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  //Text("+91"),
                  //////////////////////////////////
                  SizedBox(
                    width: size.width * 0.1,
                    child: TextField(
                      /////textfield
                      controller: countryController,
                      keyboardType: TextInputType.number,
                      //maxLength: 10,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),

                  SizedBox(
                    height: size.height * 0.7,
                  ),

                  ///////////////////////////////////
                  const Expanded(
                    child: TextField(
                      /////textfield
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                        //labelText: "Phone Number",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: size.height * 0.03,
            ),

            SizedBox(
              height: size.height * 0.09,
              //width: double.infinity,
              width: size.width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 172, 121, 186),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.amber,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(size.height * 0.2),
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OtpVerification();
                      },
                    ),
                  );
                },
                child: const Text("Send the code"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


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
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //////////////////////////////////////////
            const SizedBox(
              height: 100,
            ),
            /////////////////////////////////////////
            const Text(
              'Welcome to our HealthCare - BMI',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationThickness: 5,
                  fontSize: 20,
                  color: Colors.amber),
            ),
            ////////////////////////////////////////////
            const SizedBox(
              height: 100,
            ),
            //////////////////////////////////////////

            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              child: Image.network(
                'https://cdn.corporatefinanceinstitute.com/assets/healthcare-sector-1024x683.jpeg',
                semanticLabel: 'Heart',
                loadingBuilder: (context, child, progress) {
                  return progress == null
                      ? child
                      : const LinearProgressIndicator(
                          semanticsLabel: 'loading',
                        );
                },
                color: Colors.redAccent,
                colorBlendMode: BlendMode.darken,
              ),
            ),

            ////////////////////////////////////////////

            const SizedBox(
              height: 100,
            ),

            ///////////////////////////////////////////

            Container(
              // height: 500,
              child: Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_W5Sk67.json',
                height: 100,
                width: 100,
              ),
            ),
            ///////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

// class Animation1 extends StatelessWidget {
//   const Animation1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Lottie.network(
//             'https://assets5.lottiefiles.com/packages/lf20_W5Sk67.json'),
//       ),
//     );
//   }
// }

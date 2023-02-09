import 'package:flutter/material.dart';
import 'package:twitter_clone/CustomFlatButton.dart';
import 'package:twitter_clone/title_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _submitButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: CustomFlatButton(
        label: "Create Account",
        onPressed: () {},
        borderRadius: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                height: 40,
                child: Image.asset('assets/images/icon-480.png'),
              ),
              const Spacer(),
              const TitleText(
                'See what\'s happening in the world right now.',
                fontSize: 25,
              ),
              const SizedBox(
                height: 20,
              ),
              _submitButton(),
              const Spacer(),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  const TitleText(
                    'Have an account already?',
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 10),
                      child: TitleText(
                        ' Log in',
                        fontSize: 14,
                        color: TwitterColor.dodgeBlue,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class TwitterColor {
  static Color bondiBlue = const Color.fromRGBO(0, 132, 180, 1.0);
  static Color cerulean = const Color.fromRGBO(0, 172, 237, 1.0);
  static Color spindle = const Color.fromRGBO(192, 222, 237, 1.0);
  static Color white = const Color.fromRGBO(255, 255, 255, 1.0);
  static Color black = const Color.fromRGBO(0, 0, 0, 1.0);
  static Color woodsmoke = const Color.fromRGBO(20, 23, 2, 1.0);
  static Color woodsmoke_50 = const Color.fromRGBO(20, 23, 2, 0.5);
  static Color mystic = const Color.fromRGBO(230, 236, 240, 1.0);
  static Color dodgeBlue = const Color.fromRGBO(29, 162, 240, 1.0);
  static Color dodgeBlue_50 = const Color.fromRGBO(29, 162, 240, 0.5);
  static Color paleSky = const Color.fromRGBO(101, 119, 133, 1.0);
  static Color ceriseRed = const Color.fromRGBO(224, 36, 94, 1.0);
  static Color paleSky50 = const Color.fromRGBO(101, 118, 133, 0.5);
}

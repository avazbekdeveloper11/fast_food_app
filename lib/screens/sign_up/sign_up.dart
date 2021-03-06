import 'package:fast_food/components/companents.dart';
import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/provider/show_password_provider.dart';
import 'package:fast_food/widgets/container_button.dart';
import 'package:fast_food/widgets/icon_button.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/text_buttons.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  iconButton(const Icon(Icons.arrow_back_ios),
                      () => Navigator.pop(context)),
                  paddingOnly(
                    left: 55,
                    child: SizedBox(
                      width: getW(187),
                      child: textBold("Sign Up", size: 16),
                    ),
                  ),
                ],
              ),
              paddingOnly(
                top: 35,
                left: 20,
                child: textBold("Create Account", size: 34),
              ),
              paddingOnly(
                top: 5,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textnormal("Enter your Name, Email and Password"),
                    Row(
                      children: [
                        textnormal("for sign in, Or  "),
                        textButton(
                          text: "Already have account?",
                          ontap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              paddingOnly(
                top: 34,
                left: 20,
                right: 20,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(borderRadius: radiusCircular(6)),
                  ),
                ),
              ),
              paddingOnly(
                top: 14,
                left: 20,
                right: 20,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(borderRadius: radiusCircular(6)),
                  ),
                ),
              ),
              ChangeNotifierProvider<ShowPasswordProvider>(
                create: (context) => ShowPasswordProvider(),
                builder: (context, child) => paddingOnly(
                  top: 14,
                  left: 20,
                  right: 20,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: context.watch<ShowPasswordProvider>().show,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border:
                          OutlineInputBorder(borderRadius: radiusCircular(6)),
                      suffixIcon: iconButton(
                        Icon(context.watch<ShowPasswordProvider>().show
                            ? Icons.visibility_off
                            : Icons.visibility_outlined),
                        () {
                          context.read<ShowPasswordProvider>().showPassword();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              paddingOnly(
                top: 20,
                left: 46,
                child: SizedBox(
                  width: 284,
                  child: textButton(
                      text:
                          "By Signing up you agree to our Terms Conditions & Privacy Policy.",
                      ontap: () {},
                      color: const Color(0xFF868686)),
                ),
              ),
              paddingOnly(
                top: 20,
                left: 20,
                child: containerButton(
                    "Sign Up", () => Navigator.pushNamed(context, '/home')),
              ),
              paddingOnly(
                top: 24,
                left: 168,
                child: SizedBox(
                  width: getW(40),
                  child: textnormal("Or", color: const Color(0xFF010F07)),
                ),
              ),
              paddingOnly(
                  left: 20,
                  top: 20,
                  child: button_sign(
                      img: "assets/logo/with_google.png", ontap: () {})),
              paddingOnly(
                  top: 16,
                  left: 20,
                  child: button_sign(
                    color: const Color(0xFF4285F4),
                    img: "assets/logo/with_facebook.png",
                    logo: "assets/logo/facebook.png",
                    ontap: () {},
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

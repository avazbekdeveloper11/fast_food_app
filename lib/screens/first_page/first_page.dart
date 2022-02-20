import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/provider/firstpage_provider.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    FirstPageProvider(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            paddingOnly(
              top: 24,
              left: 34,
              right: 34,
              child: SizedBox(
                height: getH(362),
                width: getW(307),
                child: Image.asset("assets/images/pizza.png"),
              ),
            ),
            paddingOnly(
              top: 69,
              child: textBold(
                "Choose your food",
                size: 30,
              ),
            ),
            paddingOnly(
              top: 20,
              left: 32,
              right: 32,
              child: textnormal(
                "Easily find your type of food craving and you’ll get delivery in wide range.",
                size: 16,
                color: const Color(0xFF868686),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

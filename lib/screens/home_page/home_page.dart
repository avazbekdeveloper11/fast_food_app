import 'dart:io';

import 'package:fast_food/components/companents.dart';
import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/provider/locationProvider.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/text_buttons.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: [
                      paddingOnly(
                          left: 145,
                          right: 145,
                          child: textnormal("Delivery to",
                              size: 16, color: Colors.green)),
                      paddingOnly(
                        left: 120,
                        right: 13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: getW(140),
                              child: ChangeNotifierProvider<LocationProvider>(
                                create: (context) => LocationProvider(),j
                                builder: (context, child) => textButton(
                                  text:
                                      context.watch<LocationProvider>().adress,
                                  size: 20,
                                  ontap: () => context
                                      .read<LocationProvider>()
                                      .updateAdress(),
                                  color: context
                                              .watch<LocationProvider>()
                                              .adress ==
                                          "Reset location"
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ),
                            ),
                            textButton(
                                text: "Filter", color: Colors.black, size: 18),
                          ],
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: getH(200),
                        width: double.infinity,
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, __) {
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: radiusCircular(8),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

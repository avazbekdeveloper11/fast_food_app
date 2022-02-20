import 'package:fast_food/components/companents.dart';
import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/provider/locationProvider.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/text_buttons.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                        left: 85,
                        right: 13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: getW(200),
                              child: Center(
                                child: ChangeNotifierProvider<LocationProvider>(
                                  create: (context) => LocationProvider(),
                                  builder: (context, child) => textButton(
                                    text: context
                                                .watch<LocationProvider>()
                                                .adress ==
                                            "Reset"
                                        ? context
                                            .watch<LocationProvider>()
                                            .adress
                                        : "${context.watch<LocationProvider>().adress.split(',')[0]}\n${context.watch<LocationProvider>().adress.split(',')[1]}",
                                    size: 15,
                                    ontap: () => context
                                        .read<LocationProvider>()
                                        .updateAdress(),
                                    color: context
                                                .watch<LocationProvider>()
                                                .adress ==
                                            "Reset"
                                        ? Colors.red
                                        : Colors.black,
                                  ),
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
                                borderRadius: radiusCircular(8),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      text_button(ontap: () {}),
                      SizedBox(
                        height: getH(280),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, __) {
                            return Row(
                              children: [
                                const SizedBox(width: 15),
                                Container(
                                  width: getW(200),
                                  height: getH(254),
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: radiusCircular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: getH(160),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  'https://avatars.mds.yandex.net/i?id=dfdb27ef931c8a244b692bc0478ae9f0-5220409-images-thumbs&n=13'),
                                              fit: BoxFit.cover),
                                          borderRadius: radiusCircular(15),
                                        ),
                                      ),
                                      paddingSymmetric(
                                          vertical: 5,
                                          child:
                                              textBold("McDonald’s", size: 20)),
                                      textnormal("Colarodo, San Francisco",
                                          color: const Color(0xFF868686)),
                                      paddingOnly(
                                        top: 17,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: getW(36),
                                              height: getH(20),
                                              child: Center(
                                                child: textBold("4.5"),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      radiusCircular(6)),
                                            ),
                                            textBold(
                                              "25min",
                                              color: const Color.fromARGB(
                                                  255, 99, 98, 98),
                                            ),
                                            SvgPicture.asset(
                                                'assets/logo/dot.svg'),
                                            textBold(
                                              "Free delivery",
                                              color: const Color.fromARGB(
                                                  255, 99, 98, 98),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            );
                          },
                          itemCount: 5,
                        ),
                      ),
                      paddingOnly(
                        top: 30,
                        bottom: 30,
                        child: SizedBox(
                          height: getH(170),
                          width: getW(335),
                          child: Image.asset(
                            'assets/images/banner.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      text_button(
                          text: "Best Picks Restaurants by team", ontap: () {})
                    ],
                  ),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: getH(290),
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: getH(282),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: radiusCircular(8),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: getH(160),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: radiusCircular(8),
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

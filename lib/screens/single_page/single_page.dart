import 'package:fast_food/components/companents.dart';
import 'package:fast_food/constant/sizeConfig.dart';
import 'package:fast_food/widgets/icon_button.dart';
import 'package:fast_food/widgets/padding.dart';
import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/constant.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    SizedBox(
                      height: getH(280),
                      width: getW(375),
                      child: TabBarView(
                        controller: _tabcontroller,
                        children: singleContainers,
                      ),
                    ),
                    Positioned(
                      bottom: getH(20),
                      right: getW(35),
                      child: TabPageSelector(
                        indicatorSize: getW(8),
                        selectedColor: Colors.white,
                        controller: _tabcontroller,
                      ),
                    ),
                    Positioned(
                      top: 25,
                      child: Row(
                        children: [
                          iconButton(
                            const Icon(Icons.arrow_back_ios_new,
                                color: Colors.white),
                            () => Navigator.pop(context),
                          ),
                          paddingOnly(
                            left: getW(220),
                            child: iconButton(
                              const Icon(Icons.share, color: Colors.white),
                              () {},
                            ),
                          ),
                          iconButton(
                            const Icon(Icons.search, color: Colors.white),
                            () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    paddingOnly(
                      left: 20,
                      top: 24,
                      child: textBold("Mayfield Bakery & Cafe", size: 22),
                    ),
                    paddingOnly(
                      left: 20,
                      right: 20,
                      top: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          textBold("\$\$",
                              color: const Color.fromARGB(255, 99, 98, 98)),
                          SvgPicture.asset('assets/logo/dot.svg'),
                          textBold("Chinese",
                              color: const Color.fromARGB(255, 99, 98, 98)),
                          SvgPicture.asset('assets/logo/dot.svg'),
                          textBold("American",
                              color: const Color.fromARGB(255, 99, 98, 98)),
                          SvgPicture.asset('assets/logo/dot.svg'),
                          textBold("Deshi food",
                              color: const Color.fromARGB(255, 99, 98, 98)),
                        ],
                      ),
                    ),
                    paddingOnly(
                      top: 24,
                      left: 12,
                      bottom: 24,
                      child: SizedBox(
                        width: getW(140),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            textBold(
                              "4.5",
                              size: 12,
                              color: const Color.fromARGB(255, 99, 98, 98),
                            ),
                            Icon(Icons.star,
                                size: getW(15), color: Colors.green),
                            textBold(
                              '200+ Ratings',
                              size: 12,
                              color: const Color.fromARGB(255, 99, 98, 98),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        paddingSymmetric(
                          horizontal: 20,
                          child: SizedBox(
                            width: getW(73),
                            height: getH(44),
                            child: Image.asset('assets/logo/Free.png'),
                          ),
                        ),
                        SizedBox(
                          width: getW(73),
                          height: getH(44),
                          child: Image.asset('assets/logo/Delivery.png'),
                        ),
                        const Spacer(),
                        paddingOnly(
                          right: 20,
                          child: InkWell(
                            child: Container(
                              width: getW(113),
                              height: getH(38),
                              decoration: BoxDecoration(
                                  borderRadius: radiusCircular(6),
                                  border: Border.all(color: Colors.green)),
                              child: Center(
                                child: textnormal(
                                  "Take away",
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    paddingOnly(
                      left: 18,
                      top: 34,
                      child: textBold("Featured Items", size: 18),
                    ),
                    paddingOnly(
                      top: 18,
                      bottom: 34,
                      child: SizedBox(
                        height: getH(250),
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, __) {
                            return Row(
                              children: [
                                const SizedBox(width: 15),
                                InkWell(
                                  child: Container(
                                    width: getW(140),
                                    height: getH(198),
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
                                          height: getH(140),
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
                                            child: textnormal("McDonald’s",
                                                size: 18)),
                                        Row(
                                          children: [
                                            textBold(
                                              "\$\$",
                                              color: const Color(0xFF868686),
                                            ),
                                            paddingSymmetric(
                                              horizontal: 10,
                                              child: SvgPicture.asset(
                                                  "assets/logo/dot.svg"),
                                            ),
                                            textnormal("Chinese",
                                                color: const Color(0xFF868686)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                const SizedBox(width: 10),
                              ],
                            );
                          },
                          itemCount: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

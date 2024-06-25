import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:init_get_cli_setup/app/constant/app_text_style.dart';
import 'package:init_get_cli_setup/app/modules/home/widgets/history_destination_card.dart';

import '../controllers/home_controller.dart';
import '../widgets/saved_location_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 160,
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi there,",
                style: AppTextStyle.ptSansGreyF13W400,
              ),
              Text(
                "Welcome Back",
                style: AppTextStyle.ptSansNavyBlueF20W700,
              ),
            ],
          ),
        ),
        actions: [
          Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/icons/scan.png"),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage("assets/icons/side_menu_bar.png"),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF131313).withOpacity(0.1),
                  //color of shadow
                  spreadRadius: 0,
                  //spread radius
                  blurRadius: 8,
                  // blur radius
                  offset: const Offset(4, 4), // changes position of shadow
                ),
                BoxShadow(
                  color: const Color(0xFF2B2B2B).withOpacity(0.05),
                  //color of shadow
                  spreadRadius: 0,
                  //spread radius
                  blurRadius: 8,
                  // blur radius
                  offset: const Offset(-4, -4), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            /// Promo Code
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFDEDEDE),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      color: const Color(0xFFBDBDBD),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Special Promo Code!!!",
                          style: AppTextStyle.ptSansNavyBlueF11W700,
                        ),
                        Text(
                          "Use this code for discount",
                          style: AppTextStyle.ptSansNavyBlueF11W400,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 23,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF131313),
                      ),
                      child: Text(
                        "Get Now",
                        style: AppTextStyle.ptSansWhiteF11W700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Balance or Wallet
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 133,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFDEDEDE),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: Get.width * 0.5,
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    topLeft: Radius.circular(8)),
                                color: Color(0xFF0887FC)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFBDBDBD)),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Your Balance",
                                      style: AppTextStyle.ptSansWhiteF13W700,
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$540",
                                  style: AppTextStyle.ptSansWhiteF24W700,
                                ),
                                Container(
                                  width: 70,
                                  height: 33,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xFF48DD7E)),
                                  child: Text(
                                    "Deposit",
                                    style: AppTextStyle.ptSansWhiteF13W700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFFF8F9FD),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Rideshare Wallet",
                                            style:
                                                AppTextStyle.ptSansBlackF11W700,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 12,
                                            width: 5,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/icons/down_arrow.png"),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Point",
                                      style: AppTextStyle.ptSansGreyF11W700,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 24,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFFBDBDBD)),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "3750",
                                          style:
                                              AppTextStyle.ptSansBlackF15W700,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 5,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFDEDEDE),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 28,
                              width: 20,
                              color: const Color(0xFFBDBDBD),
                              // transform: Matrix4.rotationY(-90),
                            ),
                            Text(
                              "Tracking",
                              style: AppTextStyle.ptSansLBlackF11W700,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Selecting Location
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 162,
                width: Get.width,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF0887FC).withOpacity(0.05),
                      //color of shadow
                      spreadRadius: 0,
                      //spread radius
                      blurRadius: 16,
                      // blur radius
                      offset: const Offset(8, 8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You Location",
                      style: AppTextStyle.ptSansGreyF13W700,
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 42,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 9),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F9FD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Potomac Breeze Charters",
                            style: AppTextStyle.ptSansLBlackF13W700,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration:  BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/icons/search.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                decoration:  BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/icons/icon.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Text(
                      "Where you go",
                      style: AppTextStyle.ptSansGreyF13W700,
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 42,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 9),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8F9FD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Search location where you go",
                            style: AppTextStyle.ptSansGreyF13W400,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("assets/icons/search.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("assets/icons/icon.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white
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
            ),

            const SizedBox(
              height: 10,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History Destination",
                    style: AppTextStyle.ptSansNBlueF16W700,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration:  const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icons/arrow_right.png"),
                        ),
                        shape: BoxShape.circle,
                        color: Color(0xFF131313)
                    ),
                  ),
                ],
              ),
            ),
            /// History of Destinations
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  HistoryDestinationCard(
                    destinationName: "Home",
                    isSelected: index % 2 == 0 ? true : false,
                  );
                }),
          ),

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History Destination",
                    style: AppTextStyle.ptSansNBlueF16W700,
                  ),
                  Text(
                    "Edit",
                    style: AppTextStyle.ptSansGreyF11W400,
                  ),
                ],
              ),
            ),

            /// Location Saved
            Container(
              height: 240,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  const SavedLocationCard(
                      locationName: "Home",
                      address: "890 Maritime Avenue, Washington, D.C. 2000",
                    );
                  }),
            ),

            const SizedBox(height: 50,)

          ],
        ),
      ),
    );
  }
}

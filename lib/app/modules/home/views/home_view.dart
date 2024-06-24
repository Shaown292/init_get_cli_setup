import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:get/get.dart';
import 'package:init_get_cli_setup/app/constant/app_text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/scan.png"),
              )
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 32,
            width: 32,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage("assets/icons/side_menu_bar.png"),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF131313).withOpacity(0.1), //color of shadow
                  spreadRadius: 0, //spread radius
                  blurRadius: 8, // blur radius
                  offset: const Offset(4, 4), // changes position of shadow
                ),
                BoxShadow(
                  color: const Color(0xFF2B2B2B).withOpacity(0.05), //color of shadow
                  spreadRadius: 0, //spread radius
                  blurRadius: 8, // blur radius
                  offset: const Offset(-4, -4), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),
          ),
          const SizedBox(width: 20,),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

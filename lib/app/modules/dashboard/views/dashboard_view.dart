import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:init_get_cli_setup/app/modules/account/views/account_view.dart';
import 'package:init_get_cli_setup/app/modules/activity/views/activity_view.dart';
import 'package:init_get_cli_setup/app/modules/message/views/message_view.dart';
import 'package:init_get_cli_setup/app/modules/payment/views/payment_view.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../home/views/home_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    List<PersistentTabConfig> _tabs() => [
      PersistentTabConfig(
        screen: const HomeView(),
        item: ItemConfig(
          icon:  Image.asset("assets/icons/icon.png"),
            title: "Home"
        ),
      ),
      PersistentTabConfig(
        screen: const ActivityView(),
        item: ItemConfig(
          icon:  Image.asset("assets/icons/icon.png"),
          title: "Activity"
        ),
      ),
      PersistentTabConfig(
        screen: const PaymentView(),
        item: ItemConfig(
          icon: Image.asset("assets/icons/icon.png"),
          title: "Payment"
        ),
      ),
      PersistentTabConfig(
        screen: const MessageView(),
        item: ItemConfig(
          icon: Image.asset("assets/icons/icon.png"),
          title: "Message"
        ),
      ),
      PersistentTabConfig(
        screen: const AccountView(),
        item: ItemConfig(
          icon: Image.asset("assets/icons/icon.png"),
          title: "Account"
        ),
      ),
    ];
    return PersistentTabView(
      tabs: _tabs(),
      navBarHeight: 80,
      resizeToAvoidBottomInset: true,
      navBarBuilder: (navBarConfig) => Style3BottomNavBar(
        navBarConfig: navBarConfig,

      ),
    );
  }
}
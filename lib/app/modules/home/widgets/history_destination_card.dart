import 'package:flutter/material.dart';

import '../../../constant/app_text_style.dart';

class HistoryDestinationCard extends StatelessWidget {
  final String? destinationName;
  final bool isSelected;

  const HistoryDestinationCard(
      {super.key, this.destinationName, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            height: 67,
            width: 82,
            decoration: BoxDecoration(
                color: isSelected ?  const Color(0xFF0887FC) : Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0887FC).withOpacity(0.25),
                    //color of shadow
                    spreadRadius: -13,
                    //spread radius
                    blurRadius: 14.6,
                    // blur radius
                    offset: const Offset(0, 23), // changes position of shadow
                  ),
                ],
                border: Border.all(width: isSelected ?   1 : 0 , color: const Color(0xFFDEDEDE))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icons/icon.png"),
                      ),
                      shape: BoxShape.circle),
                ),
                Text(
                  destinationName ?? "",
                  style: isSelected ? AppTextStyle.ptSansWhiteF11W700 : AppTextStyle.ptSansLBlackF11W700,
                ),
              ],
            ),
          ),
        ),
        isSelected ? Positioned(
          top: 0,
          left: 63,
          child:  Container(
            height: 24,
            width: 24,
            decoration:   BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/icons/plus.png"),
                ),
                color: const Color(0xFF48DD7E),
              borderRadius: BorderRadius.circular(8)
            ),
          ),
        ) : const SizedBox(),
      ],
    );
  }
}

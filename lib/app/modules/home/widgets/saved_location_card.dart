import 'package:flutter/material.dart';

import '../../../constant/app_text_style.dart';

class SavedLocationCard extends StatelessWidget {
  final String? locationName ;
  final String? address ;
  const SavedLocationCard({super.key, this.locationName, this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 32,
              width: 32,
              decoration:  BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/icons/icon.png"),
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locationName ?? "",
                  style: AppTextStyle.ptSansLBlackF13W700,
                ),
                Text(
                  address ?? "",
                  style: AppTextStyle.ptSansGreyF11W400,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 23,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFF0887FC),
              ),
              child: Text(
                "Order",
                style: AppTextStyle.ptSansWhiteF11W700,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/constants/colors.dart';

import '../../utils/ui.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  List<String> _sampleImageLinks = [
    "https://img.freepik.com/free-vector/vertical-business-flyer-template_23-2148838214.jpg?t=st=1661705789~exp=1661706389~hmac=48ebe3dcd688387bbaa6f7c612fc7a1250b0005815a90221b72a95e650db9c89",
    "https://img.freepik.com/free-vector/travel-sale-flyer-template_52683-46904.jpg?t=st=1661705789~exp=1661706389~hmac=a9d00157514abe6a14977991735b32a07db365ae3129832ffd04229073aae2df",
    "https://img.freepik.com/free-psd/travel-tour-flyer-template_501970-130.jpg?t=st=1661705789~exp=1661706389~hmac=d2ed2c4207c3a2af73b6dfb15341e588c8b44a2b2dca3d738ed9571682db1b1d"
    "https://img.freepik.com/free-psd/digital-marketing-live-webinar-corporate-social-media-post-template_202595-540.jpg?t=st=1661705789~exp=1661706389~hmac=01c7c16ad81d3c13977b206c9f2d63eaed7384b9c17429187f878305e563a87f"
  ];

  String getRandomImgUrl(){
    final random = new Random();
    var i = random.nextInt(_sampleImageLinks.length);
    return _sampleImageLinks[i];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(20.h),
              Text(
                "Trending",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              addVerticalSpace(10.h),
              Container(
                width: double.maxFinite,
                height: 180.h,
                decoration: BoxDecoration(
                  color: primaryLighterBgColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),

                  child: Image.network(
                    "https://img.freepik.com/free-psd/digital-marketing-live-webinar-corporate-social-media-post-template_202595-542.jpg?t=st=1661705789~exp=1661706389~hmac=1a397cce050d2386e5b7451445d6f87983ac76021f808eb265dac4aeebc86ab1",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              addVerticalSpace(20.h),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 10.w),
                itemCount: 20,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) => Container(
                      width: double.maxFinite,
                      height: 150.h,
                      decoration: BoxDecoration(
                        color: primaryLighterBgColor,
                        borderRadius: BorderRadius.circular(20.r),

                      ),
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),

                    child: Image.network(
                      getRandomImgUrl(),
                      fit: BoxFit.fill,
                    ),
                  ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/plugs/top_plug_view.dart';
import 'package:plugs_app/widgets/plugs/trending_plug_view.dart';

class PlugsScreen extends StatelessWidget {
  const PlugsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top Rated",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
              addVerticalSpace(12.h),
              //  Scrollable Row of Top Rated Plugs
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    TopPlugView(),
                    TopPlugView(),
                    TopPlugView(),
                    TopPlugView(),
                    TopPlugView(),
                    TopPlugView(),
                    TopPlugView(),
                  ],
                ),
              ),
              addVerticalSpace(20.h),
              Text(
                "Trending",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
              addVerticalSpace(12.h),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(), TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
              TrendingPlugView(),
            ],
          ),
        ),
      ),
    );
  }
}

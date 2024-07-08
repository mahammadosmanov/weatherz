import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherz/constants/animation.dart';
import 'package:weatherz/constants/color.dart';
import 'package:weatherz/constants/style.dart';
import 'package:weatherz/models/weather_model.dart';
import 'package:weatherz/services/weather_service.dart';
import 'package:weatherz/widgets/custom_scroll_behavior.dart';

part "home_controller.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController c = Get.put(
      HomeController(),
    );
    return Obx(
      () {
        c.isReloadingState.value;

        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.primary,
            body: RefreshIndicator(
              backgroundColor: AppColors.secondary,
              color: AppColors.tertiary,
              onRefresh: c.refreshPage,
              child: CustomScrollBehavior(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: c.heightExceptSafeArea(context),
                    width: 375.w,
                    child: Stack(
                      children: [
                        if (c.currentWeather == null)
                          const Center(child: CircularProgressIndicator()),
                        if (c.currentWeather != null)
                          Center(
                            child: Column(
                              children: [
                                const Spacer(),
                                Icon(
                                  Icons.location_on,
                                  color: AppColors.secondary,
                                  size: 28.sp,
                                ),
                                10.verticalSpace,
                                Text(
                                  c.currentWeather?.cityname ?? '',
                                  style: AppTextStyles.largeTertiaryBold,
                                ),
                                const Spacer(
                                  flex: 4,
                                ),
                                Text(
                                  "${c.currentWeather?.temprature.round()}°",
                                  style:
                                      AppTextStyles.largeTertiaryBold.copyWith(
                                    fontSize: 40.sp,
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                        if (c.currentWeather != null)
                          Center(
                            child: Lottie.asset(
                              c.getWeatherAnimation(
                                c.currentWeather?.mainCondition,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

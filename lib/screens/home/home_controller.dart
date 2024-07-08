part of "home_screen.dart";

class HomeController extends GetxController {
  final weatherService =
      WeatherService(apiKey: "244b1eb3c174e2e5c0ab7b8b9eb7ae09");
  Rx<bool> isReloadingState = true.obs;

  Weather? currentWeather;

  double heightExceptSafeArea(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    EdgeInsets safeAreaPadding = MediaQuery.of(context).padding;

    return screenHeight - safeAreaPadding.top - safeAreaPadding.bottom;
  }

  Future<void> refreshPage() async {
    isReloadingState.value = false;
    currentWeather = await weatherService.fetchWeatherData();
    isReloadingState.value = true;
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return AppAnimation.sun;
    print(mainCondition.toLowerCase());
    switch (mainCondition.toLowerCase()) {
      case "mist":
        return AppAnimation.mist;
      case "smoke":
        return AppAnimation.mist;
      case "haze":
        return AppAnimation.mist;
      case "dust":
        return AppAnimation.mist;
      case "fog":
        return AppAnimation.mist;
      case "rain":
        return AppAnimation.cloudRain;
      case "drizzle":
        return AppAnimation.cloudRain;
      case "shower rain":
        return AppAnimation.cloudRain;
      case "thunderstorm":
        return AppAnimation.cloudLightningRain;
      case "clear":
        return AppAnimation.sun;
      case "clouds":
        return AppAnimation.cloud;
      default:
        return AppAnimation.sun;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    currentWeather = await weatherService.fetchWeatherData();
    isReloadingState.value = false;
    super.onReady();

    Timer.periodic(
      const Duration(
        minutes: 5,
      ),
      (timer) async {
        currentWeather = await weatherService.fetchWeatherData();
      },
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}

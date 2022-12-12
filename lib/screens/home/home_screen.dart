import 'package:facebook_responsive_ui/screens/home/home_screen_desktop.dart';
import 'package:facebook_responsive_ui/screens/home/home_screen_mobile.dart';
import 'package:facebook_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: Responsive(
        mobile: HomeScreenMobile(scrollController: _trackingScrollController),
        desktop: HomeScreenDesktop(scrollController: _trackingScrollController),
      )),
    );
  }
}

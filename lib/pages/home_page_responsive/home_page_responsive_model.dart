import '/components/box_component/with_logosplash_screen_box/with_logosplash_screen_box_widget.dart';
import '/components/box_component/without_logosplash_screen_box/without_logosplash_screen_box_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_responsive_widget.dart' show HomePageResponsiveWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageResponsiveModel
    extends FlutterFlowModel<HomePageResponsiveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for withLogosplashScreenBox component.
  late WithLogosplashScreenBoxModel withLogosplashScreenBoxModel1;
  // Model for withoutLogosplashScreenBox component.
  late WithoutLogosplashScreenBoxModel withoutLogosplashScreenBoxModel1;
  // Model for withLogosplashScreenBox component.
  late WithLogosplashScreenBoxModel withLogosplashScreenBoxModel2;
  // Model for withoutLogosplashScreenBox component.
  late WithoutLogosplashScreenBoxModel withoutLogosplashScreenBoxModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    withLogosplashScreenBoxModel1 =
        createModel(context, () => WithLogosplashScreenBoxModel());
    withoutLogosplashScreenBoxModel1 =
        createModel(context, () => WithoutLogosplashScreenBoxModel());
    withLogosplashScreenBoxModel2 =
        createModel(context, () => WithLogosplashScreenBoxModel());
    withoutLogosplashScreenBoxModel2 =
        createModel(context, () => WithoutLogosplashScreenBoxModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    withLogosplashScreenBoxModel1.dispose();
    withoutLogosplashScreenBoxModel1.dispose();
    withLogosplashScreenBoxModel2.dispose();
    withoutLogosplashScreenBoxModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

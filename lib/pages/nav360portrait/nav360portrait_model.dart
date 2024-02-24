import '/components/nav_components/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/overview_taskbar_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'nav360portrait_widget.dart' show Nav360portraitWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Nav360portraitModel extends FlutterFlowModel<Nav360portraitWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for OverviewTaskbarComponent component.
  late OverviewTaskbarComponentModel overviewTaskbarComponentModel;
  // Model for bottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    overviewTaskbarComponentModel =
        createModel(context, () => OverviewTaskbarComponentModel());
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    overviewTaskbarComponentModel.dispose();
    bottomNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/components/icon_components/video360_icon_btn/video360_icon_btn_widget.dart';
import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/components/overview_taskbar_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'overview_withlogo_page_widget.dart' show OverviewWithlogoPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewWithlogoPageModel
    extends FlutterFlowModel<OverviewWithlogoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for OverviewTaskbarComponent component.
  late OverviewTaskbarComponentModel overviewTaskbarComponentModel;
  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;
  // Model for video360IconBtn component.
  late Video360IconBtnModel video360IconBtnModel;
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    overviewTaskbarComponentModel =
        createModel(context, () => OverviewTaskbarComponentModel());
    newBottomNavComponentModel =
        createModel(context, () => NewBottomNavComponentModel());
    video360IconBtnModel = createModel(context, () => Video360IconBtnModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    overviewTaskbarComponentModel.dispose();
    newBottomNavComponentModel.dispose();
    video360IconBtnModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

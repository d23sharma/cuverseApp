import '/components/nav_components/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/new_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'navigator_floor_plan_page_widget.dart'
    show NavigatorFloorPlanPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorFloorPlanPageModel
    extends FlutterFlowModel<NavigatorFloorPlanPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;
  // Model for newSideNavComponent component.
  late NewSideNavComponentModel newSideNavComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
    newSideNavComponentModel =
        createModel(context, () => NewSideNavComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomNavbarComponentModel.dispose();
    newSideNavComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

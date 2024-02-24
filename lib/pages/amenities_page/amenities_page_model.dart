import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'amenities_page_widget.dart' show AmenitiesPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmenitiesPageModel extends FlutterFlowModel<AmenitiesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    newBottomNavComponentModel =
        createModel(context, () => NewBottomNavComponentModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newBottomNavComponentModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

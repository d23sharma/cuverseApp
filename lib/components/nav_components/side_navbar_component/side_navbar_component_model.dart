import '/components/new_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_navbar_component_widget.dart' show SideNavbarComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideNavbarComponentModel
    extends FlutterFlowModel<SideNavbarComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for newSideNavComponent component.
  late NewSideNavComponentModel newSideNavComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    newSideNavComponentModel =
        createModel(context, () => NewSideNavComponentModel());
  }

  @override
  void dispose() {
    newSideNavComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

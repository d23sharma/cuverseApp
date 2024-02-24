import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_navbar_component_widget.dart' show BottomNavbarComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomNavbarComponentModel
    extends FlutterFlowModel<BottomNavbarComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    newBottomNavComponentModel =
        createModel(context, () => NewBottomNavComponentModel());
  }

  @override
  void dispose() {
    newBottomNavComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

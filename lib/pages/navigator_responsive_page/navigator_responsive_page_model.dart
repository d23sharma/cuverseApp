import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/navigatortask_bar_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'navigator_responsive_page_widget.dart'
    show NavigatorResponsivePageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorResponsivePageModel
    extends FlutterFlowModel<NavigatorResponsivePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navigatortaskBar component.
  late NavigatortaskBarModel navigatortaskBarModel;
  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navigatortaskBarModel = createModel(context, () => NavigatortaskBarModel());
    newBottomNavComponentModel =
        createModel(context, () => NewBottomNavComponentModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navigatortaskBarModel.dispose();
    newBottomNavComponentModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

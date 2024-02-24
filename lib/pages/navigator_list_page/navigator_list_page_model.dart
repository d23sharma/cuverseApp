import '/backend/api_requests/api_calls.dart';
import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/navigatortask_bar_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'navigator_list_page_widget.dart' show NavigatorListPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorListPageModel extends FlutterFlowModel<NavigatorListPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navigatortaskBar component.
  late NavigatortaskBarModel navigatortaskBarModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
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

import '/components/box_component/apartment_detail_component/apartment_detail_component_widget.dart';
import '/components/icon_components/filter_icon_btn/filter_icon_btn_widget.dart';
import '/components/icon_components/list_icon_btn/list_icon_btn_widget.dart';
import '/components/nav_components/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'nav_available_responsive_page_widget.dart'
    show NavAvailableResponsivePageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavAvailableResponsivePageModel
    extends FlutterFlowModel<NavAvailableResponsivePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for apartmentDetailComponent component.
  late ApartmentDetailComponentModel apartmentDetailComponentModel;
  // Model for bottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;
  // Model for filterIconBtn component.
  late FilterIconBtnModel filterIconBtnModel;
  // Model for listIconBtn component.
  late ListIconBtnModel listIconBtnModel;
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    apartmentDetailComponentModel =
        createModel(context, () => ApartmentDetailComponentModel());
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
    filterIconBtnModel = createModel(context, () => FilterIconBtnModel());
    listIconBtnModel = createModel(context, () => ListIconBtnModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    apartmentDetailComponentModel.dispose();
    bottomNavbarComponentModel.dispose();
    filterIconBtnModel.dispose();
    listIconBtnModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

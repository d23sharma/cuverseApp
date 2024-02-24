import '/components/filtered_apartment_component_widget.dart';
import '/components/nav_components/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/navigatortask_bar_widget.dart';
import '/components/new_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'navigator_filtered_apartment_page_widget.dart'
    show NavigatorFilteredApartmentPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorFilteredApartmentPageModel
    extends FlutterFlowModel<NavigatorFilteredApartmentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navigatortaskBar component.
  late NavigatortaskBarModel navigatortaskBarModel;
  // Model for FilteredApartmentComponent component.
  late FilteredApartmentComponentModel filteredApartmentComponentModel1;
  // Model for bottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;
  // Model for FilteredApartmentComponent component.
  late FilteredApartmentComponentModel filteredApartmentComponentModel2;
  // Model for newSideNavComponent component.
  late NewSideNavComponentModel newSideNavComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navigatortaskBarModel = createModel(context, () => NavigatortaskBarModel());
    filteredApartmentComponentModel1 =
        createModel(context, () => FilteredApartmentComponentModel());
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
    filteredApartmentComponentModel2 =
        createModel(context, () => FilteredApartmentComponentModel());
    newSideNavComponentModel =
        createModel(context, () => NewSideNavComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navigatortaskBarModel.dispose();
    filteredApartmentComponentModel1.dispose();
    bottomNavbarComponentModel.dispose();
    filteredApartmentComponentModel2.dispose();
    newSideNavComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

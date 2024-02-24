import '/backend/api_requests/api_calls.dart';
import '/components/location_component_new/location_component_new_widget.dart';
import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'location_page_widget.dart' show LocationPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocationPageModel extends FlutterFlowModel<LocationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter1;
  final googleMapsController1 = Completer<GoogleMapController>();
  // Model for locationComponentNew component.
  late LocationComponentNewModel locationComponentNewModel;
  // Model for newBottomNavComponent component.
  late NewBottomNavComponentModel newBottomNavComponentModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter2;
  final googleMapsController2 = Completer<GoogleMapController>();
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    locationComponentNewModel =
        createModel(context, () => LocationComponentNewModel());
    newBottomNavComponentModel =
        createModel(context, () => NewBottomNavComponentModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    locationComponentNewModel.dispose();
    newBottomNavComponentModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

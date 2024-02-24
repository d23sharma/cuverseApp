import '/components/navigatortask_bar_widget.dart';
import '/components/virtual_tour/virtual_tour_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'apartment_detail_component_widget.dart'
    show ApartmentDetailComponentWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApartmentDetailComponentModel
    extends FlutterFlowModel<ApartmentDetailComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for navigatortaskBar component.
  late NavigatortaskBarModel navigatortaskBarModel;
  // Model for virtualTour component.
  late VirtualTourModel virtualTourModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navigatortaskBarModel = createModel(context, () => NavigatortaskBarModel());
    virtualTourModel = createModel(context, () => VirtualTourModel());
  }

  @override
  void dispose() {
    navigatortaskBarModel.dispose();
    virtualTourModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

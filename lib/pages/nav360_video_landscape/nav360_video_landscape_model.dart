import '/components/btn_components/avail_unit_num_btn/avail_unit_num_btn_widget.dart';
import '/components/icon_components/filter_icon_btn/filter_icon_btn_widget.dart';
import '/components/icon_components/list_icon_btn/list_icon_btn_widget.dart';
import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'nav360_video_landscape_widget.dart' show Nav360VideoLandscapeWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Nav360VideoLandscapeModel
    extends FlutterFlowModel<Nav360VideoLandscapeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for availUnitNumBtn component.
  late AvailUnitNumBtnModel availUnitNumBtnModel;
  // Model for filterIconBtn component.
  late FilterIconBtnModel filterIconBtnModel;
  // Model for listIconBtn component.
  late ListIconBtnModel listIconBtnModel;
  // Model for sideNavbarComponent component.
  late SideNavbarComponentModel sideNavbarComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    availUnitNumBtnModel = createModel(context, () => AvailUnitNumBtnModel());
    filterIconBtnModel = createModel(context, () => FilterIconBtnModel());
    listIconBtnModel = createModel(context, () => ListIconBtnModel());
    sideNavbarComponentModel =
        createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    availUnitNumBtnModel.dispose();
    filterIconBtnModel.dispose();
    listIconBtnModel.dispose();
    sideNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

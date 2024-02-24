import '/components/filter_by_price_comp_widget.dart';
import '/components/icon_components/reset_icon_btn/reset_icon_btn_widget.dart';
import '/components/nav_components/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/navigatortask_bar_widget.dart';
import '/components/new_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'navigator_filter_page_widget.dart' show NavigatorFilterPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorFilterPageModel
    extends FlutterFlowModel<NavigatorFilterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navigatortaskBar component.
  late NavigatortaskBarModel navigatortaskBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // Model for filterByPriceComp component.
  late FilterByPriceCompModel filterByPriceCompModel1;
  // Model for resetIconBtn component.
  late ResetIconBtnModel resetIconBtnModel;
  // Model for bottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController4;
  String? get choiceChipsValue4 =>
      choiceChipsValueController4?.value?.firstOrNull;
  set choiceChipsValue4(String? val) =>
      choiceChipsValueController4?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController5;
  String? get choiceChipsValue5 =>
      choiceChipsValueController5?.value?.firstOrNull;
  set choiceChipsValue5(String? val) =>
      choiceChipsValueController5?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController6;
  String? get choiceChipsValue6 =>
      choiceChipsValueController6?.value?.firstOrNull;
  set choiceChipsValue6(String? val) =>
      choiceChipsValueController6?.value = val != null ? [val] : [];
  // Model for filterByPriceComp component.
  late FilterByPriceCompModel filterByPriceCompModel2;
  // Model for newSideNavComponent component.
  late NewSideNavComponentModel newSideNavComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navigatortaskBarModel = createModel(context, () => NavigatortaskBarModel());
    filterByPriceCompModel1 =
        createModel(context, () => FilterByPriceCompModel());
    resetIconBtnModel = createModel(context, () => ResetIconBtnModel());
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
    filterByPriceCompModel2 =
        createModel(context, () => FilterByPriceCompModel());
    newSideNavComponentModel =
        createModel(context, () => NewSideNavComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navigatortaskBarModel.dispose();
    filterByPriceCompModel1.dispose();
    resetIconBtnModel.dispose();
    bottomNavbarComponentModel.dispose();
    filterByPriceCompModel2.dispose();
    newSideNavComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

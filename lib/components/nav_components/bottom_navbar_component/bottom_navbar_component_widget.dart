import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_navbar_component_model.dart';
export 'bottom_navbar_component_model.dart';

class BottomNavbarComponentWidget extends StatefulWidget {
  const BottomNavbarComponentWidget({super.key});

  @override
  State<BottomNavbarComponentWidget> createState() =>
      _BottomNavbarComponentWidgetState();
}

class _BottomNavbarComponentWidgetState
    extends State<BottomNavbarComponentWidget> {
  late BottomNavbarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavbarComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 393.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
        ),
        child: wrapWithModel(
          model: _model.newBottomNavComponentModel,
          updateCallback: () => setState(() {}),
          child: NewBottomNavComponentWidget(
            hidden: false,
          ),
        ),
      ),
    );
  }
}

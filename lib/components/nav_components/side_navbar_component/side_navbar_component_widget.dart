import '/components/new_side_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_navbar_component_model.dart';
export 'side_navbar_component_model.dart';

class SideNavbarComponentWidget extends StatefulWidget {
  const SideNavbarComponentWidget({super.key});

  @override
  State<SideNavbarComponentWidget> createState() =>
      _SideNavbarComponentWidgetState();
}

class _SideNavbarComponentWidgetState extends State<SideNavbarComponentWidget> {
  late SideNavbarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideNavbarComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 75.0,
      height: 393.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: wrapWithModel(
        model: _model.newSideNavComponentModel,
        updateCallback: () => setState(() {}),
        child: NewSideNavComponentWidget(
          hidden: false,
        ),
      ),
    );
  }
}

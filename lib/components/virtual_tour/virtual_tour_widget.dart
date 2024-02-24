import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'virtual_tour_model.dart';
export 'virtual_tour_model.dart';

class VirtualTourWidget extends StatefulWidget {
  const VirtualTourWidget({
    super.key,
    required this.virtualTourBtnText,
    required this.virtualTourBgColor,
    required this.virtualTourAction,
    required this.virtualTourTxtColor,
  });

  final String? virtualTourBtnText;
  final Color? virtualTourBgColor;
  final Future Function()? virtualTourAction;
  final Color? virtualTourTxtColor;

  @override
  State<VirtualTourWidget> createState() => _VirtualTourWidgetState();
}

class _VirtualTourWidgetState extends State<VirtualTourWidget> {
  late VirtualTourModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VirtualTourModel());
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
      child: FFButtonWidget(
        onPressed: () async {
          await widget.virtualTourAction?.call();
        },
        text: widget.virtualTourBtnText!,
        icon: Icon(
          FFIcons.k211928SocialYoutubeIcon,
          size: 28.0,
        ),
        options: FFButtonOptions(
          width: 155.0,
          height: 34.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: widget.virtualTourBgColor,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter fonts',
                color: widget.virtualTourTxtColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                useGoogleFonts: false,
              ),
          elevation: 5.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(5.0),
          hoverBorderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
          hoverTextColor: FlutterFlowTheme.of(context).tertiary,
        ),
      ),
    );
  }
}

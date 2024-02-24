import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gallery_button_model.dart';
export 'gallery_button_model.dart';

class GalleryButtonWidget extends StatefulWidget {
  const GalleryButtonWidget({super.key});

  @override
  State<GalleryButtonWidget> createState() => _GalleryButtonWidgetState();
}

class _GalleryButtonWidgetState extends State<GalleryButtonWidget> {
  late GalleryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GalleryButtonModel());
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
        width: 362.0,
        height: 42.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 106.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 4.0),
                  )
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'galleryExteriorPage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.topToBottom,
                        duration: Duration(milliseconds: 300),
                      ),
                    },
                  );
                },
                text: 'Exterior',
                options: FFButtonOptions(
                  width: 106.0,
                  height: 28.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter fonts',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  elevation: 5.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                  hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                ),
              ),
            ),
            Container(
              width: 106.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 4.0),
                  )
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'GalleryInteriorPage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.topToBottom,
                        duration: Duration(milliseconds: 300),
                      ),
                    },
                  );
                },
                text: 'Interior',
                options: FFButtonOptions(
                  width: 106.0,
                  height: 28.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter fonts',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  elevation: 5.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                  hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                ),
              ),
            ),
            Container(
              width: 108.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 4.0),
                  )
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'galleryAmenitiesPage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.topToBottom,
                        duration: Duration(milliseconds: 300),
                      ),
                    },
                  );
                },
                text: 'Amenities',
                options: FFButtonOptions(
                  width: 108.0,
                  height: 28.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter fonts',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  elevation: 5.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                  hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

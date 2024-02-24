import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_component_new_model.dart';
export 'location_component_new_model.dart';

class LocationComponentNewWidget extends StatefulWidget {
  const LocationComponentNewWidget({
    super.key,
    required this.locationName,
    required this.locationAddress,
  });

  final String? locationName;
  final String? locationAddress;

  @override
  State<LocationComponentNewWidget> createState() =>
      _LocationComponentNewWidgetState();
}

class _LocationComponentNewWidgetState
    extends State<LocationComponentNewWidget> {
  late LocationComponentNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationComponentNewModel());
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
        width: 178.0,
        height: 245.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 153.0,
                  height: 78.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/83/600',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.locationName,
                        'Name',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.locationAddress,
                      'Location address',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter fonts',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 11.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Distance: 3.5 KM',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Time: 9 minutes',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 7.0))
                  .addToStart(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}

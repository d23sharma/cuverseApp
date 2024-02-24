import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_detail_google_map_model.dart';
export 'location_detail_google_map_model.dart';

class LocationDetailGoogleMapWidget extends StatefulWidget {
  const LocationDetailGoogleMapWidget({
    super.key,
    required this.hospitalLocation,
  });

  final HospitalsRecord? hospitalLocation;

  @override
  State<LocationDetailGoogleMapWidget> createState() =>
      _LocationDetailGoogleMapWidgetState();
}

class _LocationDetailGoogleMapWidgetState
    extends State<LocationDetailGoogleMapWidget> {
  late LocationDetailGoogleMapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationDetailGoogleMapModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<HospitalsRecord>(
      stream: HospitalsRecord.getDocument(widget.hospitalLocation!.reference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primaryText,
                ),
              ),
            ),
          );
        }
        final containerHospitalsRecord = snapshot.data!;
        return Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: const CircleBorder(),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    containerHospitalsRecord.name,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

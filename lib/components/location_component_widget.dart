import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_component_model.dart';
export 'location_component_model.dart';

class LocationComponentWidget extends StatefulWidget {
  const LocationComponentWidget({super.key});

  @override
  State<LocationComponentWidget> createState() =>
      _LocationComponentWidgetState();
}

class _LocationComponentWidgetState extends State<LocationComponentWidget> {
  late LocationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<HospitalsRecord>>(
      stream: queryHospitalsRecord(),
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
        List<HospitalsRecord> containerHospitalsRecordList = snapshot.data!;
        return Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Hello World',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
        );
      },
    );
  }
}

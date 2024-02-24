import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filtered_apartment_component_model.dart';
export 'filtered_apartment_component_model.dart';

class FilteredApartmentComponentWidget extends StatefulWidget {
  const FilteredApartmentComponentWidget({super.key});

  @override
  State<FilteredApartmentComponentWidget> createState() =>
      _FilteredApartmentComponentWidgetState();
}

class _FilteredApartmentComponentWidgetState
    extends State<FilteredApartmentComponentWidget> {
  late FilteredApartmentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilteredApartmentComponentModel());
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
      child: FutureBuilder<ApiCallResponse>(
        future: InventoryListCall.call(),
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
          final containerInventoryListResponse = snapshot.data!;
          return Container(
            width: 383.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Bedroom',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      '2BR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Floor',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      '4',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Area',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      '85-92 sq.m',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Price',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      '\$ 460-849 k',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter fonts',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      buttonSize: 35.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        Icons.refresh,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 25.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ].divide(SizedBox(width: 2.0)),
            ),
          );
        },
      ),
    );
  }
}

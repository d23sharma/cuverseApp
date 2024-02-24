import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'backicon_btn_model.dart';
export 'backicon_btn_model.dart';

class BackiconBtnWidget extends StatefulWidget {
  const BackiconBtnWidget({super.key});

  @override
  State<BackiconBtnWidget> createState() => _BackiconBtnWidgetState();
}

class _BackiconBtnWidgetState extends State<BackiconBtnWidget> {
  late BackiconBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackiconBtnModel());
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
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        child: Container(
          width: 34.0,
          height: 34.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 0.2,
            ),
          ),
          child: FlutterFlowIconButton(
            buttonSize: 40.0,
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 18.0,
            ),
            onPressed: () async {
              context.pushNamed(
                'navigatorAvailablePage',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 250),
                  ),
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'entered_model.dart';
export 'entered_model.dart';

class EnteredWidget extends StatefulWidget {
  const EnteredWidget({super.key});

  @override
  State<EnteredWidget> createState() => _EnteredWidgetState();
}

class _EnteredWidgetState extends State<EnteredWidget> {
  late EnteredModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnteredModel());
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
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'Page Saved',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                fontSize: 32.0,
              ),
        ),
      ),
    );
  }
}

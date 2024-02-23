import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'optionsmenu_model.dart';
export 'optionsmenu_model.dart';

class OptionsmenuWidget extends StatefulWidget {
  const OptionsmenuWidget({
    super.key,
    required this.taskRef,
  });

  final DocumentReference? taskRef;

  @override
  State<OptionsmenuWidget> createState() => _OptionsmenuWidgetState();
}

class _OptionsmenuWidgetState extends State<OptionsmenuWidget> {
  late OptionsmenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionsmenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.taskRef!.delete();
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: 65.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Delete',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).error,
                        fontSize: 24.0,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

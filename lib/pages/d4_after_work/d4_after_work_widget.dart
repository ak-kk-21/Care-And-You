import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'd4_after_work_model.dart';
export 'd4_after_work_model.dart';

class D4AfterWorkWidget extends StatefulWidget {
  const D4AfterWorkWidget({super.key});

  @override
  State<D4AfterWorkWidget> createState() => _D4AfterWorkWidgetState();
}

class _D4AfterWorkWidgetState extends State<D4AfterWorkWidget> {
  late D4AfterWorkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => D4AfterWorkModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/WhatsApp_Image_2024-02-15_at_5.16.13_PM.jpeg',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('e5_moodPicker');
                  },
                  child: Container(
                    width: 304.0,
                    height: 106.0,
                    decoration: BoxDecoration(
                      color: const Color(0x92FFFFFF),
                      borderRadius: BorderRadius.circular(40.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Mood Palette',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 35.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('g7_feelingsLog');
                },
                child: Container(
                  width: 304.0,
                  height: 106.0,
                  decoration: BoxDecoration(
                    color: const Color(0x92FFFFFF),
                    borderRadius: BorderRadius.circular(40.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Feelings Log',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 200.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('f6_resourcesAndGuides');
                  },
                  child: Container(
                    width: 304.0,
                    height: 106.0,
                    decoration: BoxDecoration(
                      color: const Color(0x92FFFFFF),
                      borderRadius: BorderRadius.circular(40.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Resources & Guides',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 35.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

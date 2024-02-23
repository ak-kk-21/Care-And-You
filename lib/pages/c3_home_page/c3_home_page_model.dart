import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c3_home_page_widget.dart' show C3HomePageWidget;
import 'package:flutter/material.dart';

class C3HomePageModel extends FlutterFlowModel<C3HomePageWidget> {
  ///  Local state fields for this page.

  String pageAccessToken = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Custom Action - getEventFromCalendar] action in Calendar widget.
  List<dynamic>? rawEvent;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

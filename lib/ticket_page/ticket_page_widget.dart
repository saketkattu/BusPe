import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPageWidget extends StatefulWidget {
  const TicketPageWidget({Key key}) : super(key: key);

  @override
  _TicketPageWidgetState createState() => _TicketPageWidgetState();
}

class _TicketPageWidgetState extends State<TicketPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, -0.1),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(160, 100, 0, 0),
                    child: Text(
                      'Rs.20',
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.darkBackground,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

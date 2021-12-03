import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
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
                    padding: EdgeInsetsDirectional.fromSTEB(30, 100, 0, 0),
                    child: Text(
                      'Show Conductor to Verify Ticket',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.darkBackground,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Image.network(
                  valueOrDefault<String>(
                    functions.getQR(),
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png',
                  ),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

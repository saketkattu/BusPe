import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pay_now_page/pay_now_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({Key key}) : super(key: key);

  @override
  _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  String dropDownValue;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.textColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(80, 87, 0, 0),
                child: Text(
                  'Welcome to BMTC',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.darkBackground,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              'You\'re on Bus',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.darkBackground,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              '500D',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.darkBackground,
                fontSize: 36,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.8, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Text(
                'Boarding Bus Stop',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.darkBackground,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.85, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'Silk Board',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.darkBackground,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.8, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: Text(
                'Destination Bus Stop',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.darkBackground,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.85, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: FlutterFlowDropDown(
                options: ['HSR BDA Complex'].toList(),
                onChanged: (val) => setState(() => dropDownValue = val),
                width: 180,
                height: 50,
                textStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                elevation: 2,
                borderColor: Colors.transparent,
                borderWidth: 0,
                borderRadius: 0,
                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.05, -0.35),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() => _loadingButton = true);
                  try {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PayNowPageWidget(),
                      ),
                    );
                  } finally {
                    setState(() => _loadingButton = false);
                  }
                },
                text: 'Proceed',
                options: FFButtonOptions(
                  width: 350,
                  height: 40,
                  color: FlutterFlowTheme.darkBackground,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
                loading: _loadingButton,
              ),
            ),
          )
        ],
      ),
    );
  }
}

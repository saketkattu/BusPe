import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PayNowPageWidget extends StatefulWidget {
  const PayNowPageWidget({Key key}) : super(key: key);

  @override
  _PayNowPageWidgetState createState() => _PayNowPageWidgetState();
}

class _PayNowPageWidgetState extends State<PayNowPageWidget> {
  bool _loadingButton = false;
  var qrCode = '';
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
              Align(
                alignment: AlignmentDirectional(0.15, -0.1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(170, 200, 0, 0),
                  child: Text(
                    'Pay',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.darkBackground,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              'Rs .20',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.darkBackground,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 450, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                setState(() => _loadingButton = true);
                try {
                  qrCode = await FlutterBarcodeScanner.scanBarcode(
                    '#C62828', // scanning line color
                    'Cancel', // cancel button text
                    true, // whether to show the flash icon
                    ScanMode.QR,
                  );

                  setState(() {});
                } finally {
                  setState(() => _loadingButton = false);
                }
              },
              text: 'Procceed to Pay',
              options: FFButtonOptions(
                width: 270,
                height: 40,
                color: FlutterFlowTheme.darkBackground,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Lexend Deca',
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
          )
        ],
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'detalhes_model.dart';
export 'detalhes_model.dart';

class DetalhesWidget extends StatefulWidget {
  const DetalhesWidget({Key? key}) : super(key: key);

  @override
  _DetalhesWidgetState createState() => _DetalhesWidgetState();
}

class _DetalhesWidgetState extends State<DetalhesWidget> {
  late DetalhesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF4333D6),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'Detalhes',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(
                      'assets/images/download.png',
                      width: 200,
                      height: 248,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    extentRatio: 0.25,
                    children: [
                      SlidableAction(
                        label: 'Share',
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        icon: Icons.share,
                        onPressed: (_) {
                          print('SlidableActionWidget pressed ...');
                        },
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      'Programador web',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFFFB8936),
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    subtitle: Text(
                      'Curso de programação  para  a web com html css javascripit',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFFF9739),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).primary,
                    dense: false,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                child: Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    extentRatio: 0.25,
                    children: [
                      SlidableAction(
                        label: 'Share',
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        icon: Icons.share,
                        onPressed: (_) {
                          print('SlidableActionWidget pressed ...');
                        },
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      'Programador de Sistemas',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFFEA680E),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    subtitle: Text(
                      'Curso de programação em java e banco de dados',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFEA680E),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).primary,
                    dense: false,
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

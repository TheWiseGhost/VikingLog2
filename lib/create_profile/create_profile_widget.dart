import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_profile_model.dart';
export 'create_profile_model.dart';

class CreateProfileWidget extends StatefulWidget {
  const CreateProfileWidget({Key? key}) : super(key: key);

  @override
  _CreateProfileWidgetState createState() => _CreateProfileWidgetState();
}

class _CreateProfileWidgetState extends State<CreateProfileWidget> {
  late CreateProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProfileModel());

    _model.yourNameController ??= TextEditingController();
    _model.cityController ??= TextEditingController();
    _model.myBioController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Create Profile',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: SafeArea(
        top: true,
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 570.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 44.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Create Profile',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: Container(
                                width: 90.0,
                                height: 90.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 500),
                                  fadeOutDuration: Duration(milliseconds: 500),
                                  imageUrl:
                                      'data:image/jpeg;base64,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',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                      child: TextFormField(
                        controller: _model.yourNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Your Name',
                          labelStyle: FlutterFlowTheme.of(context).bodySmall,
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 24.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.yourNameControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                      child: TextFormField(
                        controller: _model.cityController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Your City',
                          labelStyle: FlutterFlowTheme.of(context).bodySmall,
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 24.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator:
                            _model.cityControllerValidator.asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.stateValueController ??=
                            FormFieldController<String>(
                          _model.stateValue ??= 'State',
                        ),
                        options: [
                          'State',
                          'Alabama',
                          'Alaska',
                          'Arizona',
                          'Arkansas',
                          'California',
                          'Colorado',
                          'Connecticut',
                          'Delaware',
                          'Florida',
                          'Georgia',
                          'Hawaii',
                          'Idaho',
                          'Illinoi',
                          'Indiana',
                          'Iowa',
                          'Kansas',
                          'Kentucky',
                          'Louisiana',
                          'Maine',
                          'Maryland',
                          'Massachusetts',
                          'Michigan',
                          'Minnesota',
                          'Mississippi',
                          'Missouri',
                          'Monta',
                          'Nebraska',
                          'Nevada',
                          'New Hampshire',
                          'New Jersey',
                          'New Mexico',
                          'New York',
                          'North Carolina',
                          'North Dak',
                          'Ohio',
                          'Oklahoma',
                          'Oregon',
                          'Pennsylvani',
                          'Rhode Island',
                          'South Caroli',
                          'South Dakota',
                          'Tennessee',
                          'Texas',
                          'Utah',
                          'Vermont',
                          'Virginia',
                          'Washingto',
                          'West Virginia',
                          'Wisconsin',
                          'Wyoming'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.stateValue = val),
                        width: double.infinity,
                        height: 56.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Select State',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 15.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        borderWidth: 2.0,
                        borderRadius: 50.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            20.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
                      child: TextFormField(
                        controller: _model.myBioController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).bodySmall,
                          hintText: 'Your bio',
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 24.0, 0.0, 24.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        validator: _model.myBioControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.05),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Save Changes',
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

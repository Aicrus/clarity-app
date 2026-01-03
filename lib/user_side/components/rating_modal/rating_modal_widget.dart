import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rating_modal_model.dart';
export 'rating_modal_model.dart';

class RatingModalWidget extends StatefulWidget {
  const RatingModalWidget({super.key});

  @override
  State<RatingModalWidget> createState() => _RatingModalWidgetState();
}

class _RatingModalWidgetState extends State<RatingModalWidget> {
  late RatingModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingModalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 7.0,
          sigmaY: 7.0,
        ),
        child: Container(
          width: 350.0,
          height: 500.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).gradientTop,
                FlutterFlowTheme.of(context).gradientBottom
              ],
              stops: const [0.5, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
              Row(  
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ 
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
  child: InkWell(
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () async {
        Navigator.pop(context);
      
    },
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Icon(Icons.close), 
      ),
    ),
  ), 

              ],),
              Text(
                'Ti piace Clarity?',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Istok Web',
                      color: FlutterFlowTheme.of(context).titles,
                    ),
              ),
              RatingBar.builder(
                onRatingUpdate: (newValue) =>
                    setState(() => _model.ratingBarValue = newValue),
                itemBuilder: (context, index) => FaIcon(
                  FontAwesomeIcons.star,
                  color: FlutterFlowTheme.of(context).accent1,
                ),
                direction: Axis.horizontal,
                initialRating: _model.ratingBarValue ??= 4.0,
                unratedColor: FlutterFlowTheme.of(context).alternate,
                itemCount: 5,
                itemSize: 40.0,
                glowColor: FlutterFlowTheme.of(context).accent1,
              ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('RATING_MODAL_INVIA_VALUTAZIONE_BTN_ON_TA');
                  if (_model.ratingBarValue! > 3.0) {
                    if (isiOS) {
                      logFirebaseEvent('Button_launch_u_r_l');
                      await launchURL(
                          'https://apps.apple.com/fr/app/clarity-meditazione-e-sonno/id1490242088');
                    } else {
                      logFirebaseEvent('Button_launch_u_r_l');
                      await launchURL(
                          'https://play.google.com/store/apps/details?id=com.newmanspirit.clarity');
                    }
                  } else {
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed('question');
                  }
                },
                text: 'Invia valutazione',
                options: FFButtonOptions(
                  width: 237.0,
                  height: 56.0,
                  padding: const EdgeInsets.all(0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).buttonBackGround,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Istok Web',
                        color: FlutterFlowTheme.of(context).buttonTextColor,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

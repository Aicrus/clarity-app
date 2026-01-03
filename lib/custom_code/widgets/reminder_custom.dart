// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom widgets
// Imports custom actions
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:clarity/auth/firebase_auth/auth_util.dart';
import 'package:clarity/flutter_flow/flutter_flow_widgets.dart';
import '/backend/push_notifications/push_notifications_util.dart';

class ReminderCustom extends StatefulWidget {
  const ReminderCustom({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ReminderCustomState createState() => _ReminderCustomState();
}

class _ReminderCustomState extends State<ReminderCustom> {
  int selectedHour = 0;
  int selectedMinute = 0;
  FixedExtentScrollController? hourController;
  FixedExtentScrollController? minuteController;
  DateTime timeSelected = DateTime.now();
  String alreadyReminder = '';
  bool hasValue = false;
  String uid = "";

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // fetchNotifications();
    fetchReminderDate();
    // Get the current time
    DateTime currentTime = DateTime.now();
    selectedHour = currentTime.hour;
    selectedMinute = currentTime.minute;
    hourController = FixedExtentScrollController(initialItem: selectedHour);
    minuteController = FixedExtentScrollController(initialItem: selectedMinute);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    hourController?.dispose();
    minuteController?.dispose();
    super.dispose();
  }

  int adjustedSelectedValue(int value) {
    return value;
  }

  // Future<void> fetchNotifications() async {
  //   FirebaseFirestore.instance
  //       .collection('ff_user_push_notifications')
  //       .where('sender', isEqualTo: currentUserReference)
  //       .get()
  //       .then((QuerySnapshot querySnapshot) {
  //     for (var doc in querySnapshot.docs) {
  //       DateTime scheduledTime = (doc['scheduled_time'] as Timestamp).toDate();
  //       String formattedTime = DateFormat('HH:mm').format(scheduledTime);
  //       setState(() {
  //         alreadyReminder = formattedTime;
  //         hasValue = true;
  //         uid = doc.id;
  //       });
  //       print(formattedTime); // Affiche l'heure et les minutes
  //     }
  //   });
  // }

  Future<void> fetchReminderDate() async {
    DateTime? reminderDate = currentUserDocument!.reminderDate;
    alreadyReminder =
        reminderDate != null ? DateFormat('HH:mm').format(reminderDate) : '';
    hasValue = alreadyReminder != "";
  }

  Future<void> deleteReminder() async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    firebaseFirestore.collection('users').doc(currentUserUid).set(
        {'ReminderIsSet': false, 'ReminderDate': FieldValue.delete()},
        SetOptions(merge: true));

    try {
      // Récupération de tous les documents de la collection ff_user_push_notifications
      // de l'utilisateur
      QuerySnapshot notificationsSnapshot = await firebaseFirestore
          .collection('ff_user_push_notifications')
          .where('sender', isEqualTo: currentUserReference)
          .get();

      // Suppression de chaque document
      for (QueryDocumentSnapshot docSnapshot in notificationsSnapshot.docs) {
        docSnapshot.reference.delete();
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('La tua sveglia è stata eliminata con successo!'),
        ),
      );
      setState(() {
        hasValue = false;
      });
    } catch (error) {
      print('Error deleting documents: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'REMINDER',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).gradientTop,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.of(context)
                                  .topNavBarTextColor,
                              size: 24.0,
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
                          context.safePop();
                        },
                        child: Icon(
                          Icons.close,
                          color:
                              FlutterFlowTheme.of(context).topNavBarTextColor,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Container(
              width: double.infinity,
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
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: 350.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      hasValue
                          ? Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Container(
                                width: 350,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 350,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        'La sveglia giornaliera è programmata per: $alreadyReminder',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        deleteReminder();
                                        setState(() {});
                                      },
                                      text: 'Annulla',
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(24, 0, 24, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .buttonBackGround,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Istok Web',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .logInTextColorButton,
                                            ),
                                        elevation: 3,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox(),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Promemoria della meditazione',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Istok Web',
                                  color: FlutterFlowTheme.of(context).titles,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 32.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Text(
                            'Voglio ricordare di meditare ogni giorno alle:',
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Istok Web',
                                  color:
                                      FlutterFlowTheme.of(context).subTextColor,
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: SizedBox(
                            width: 220.0,
                            height: 180.0,
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 200.0 / 2.2,
                                    height: 180,
                                    child: buildPicker(
                                      controller: hourController!,
                                      itemCount: 24,
                                      onSelectedItemChanged: (int index) {
                                        setState(() {
                                          selectedHour =
                                              adjustedSelectedValue(index);
                                        });
                                      },
                                      selectedValue:
                                          adjustedSelectedValue(selectedHour),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  SizedBox(
                                    width: 200 / 2.2,
                                    height: 180,
                                    child: buildPicker(
                                      itemCount: 60,
                                      controller: minuteController!,
                                      onSelectedItemChanged: (int index) {
                                        setState(() {
                                          selectedMinute =
                                              adjustedSelectedValue(index);
                                        });
                                      },
                                      selectedValue:
                                          adjustedSelectedValue(selectedMinute),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 35.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            // Récupération de l'heure actuelle
                            DateTime now = DateTime.now();
                            timeSelected = DateTime(
                              timeSelected.year,
                              timeSelected.month,
                              timeSelected.day,
                              selectedHour,
                              selectedMinute,
                            );
                            // Si l'heure sélectionnée est avant l'heure actuelle,
                            // ajout d'un jour pour faire démarrer le lendemain
                            if (timeSelected.isBefore(now)) {
                              timeSelected =
                                  timeSelected.add(const Duration(days: 1));
                            }
                            if (currentUserReference != null) {
                              updateUserReminder(
                                  reminderIsSet: true,
                                  reminderDate: timeSelected);
                              if (hasValue) {
                                // Modification de l'heure des notifications restantes
                                modifyPushNotifications(
                                    selectedDateTime: timeSelected);
                              } else {
                                // Création de toutes les notifications
                                createPushNotifications(
                                    onlyRecurring: false,
                                    selectedDateTime: timeSelected);
                              }
                              context.safePop();
                            }
                            if (currentUserReference == null) {
                              context.pushNamed(
                                'landingpage',
                                queryParameters: {
                                  'dateReminder': serializeParam(
                                    timeSelected,
                                    ParamType.DateTime,
                                  ),
                                }.withoutNulls,
                              );
                            }
                            !permissionCompleter.isCompleted
                                ? permissionCompleter.complete()
                                : null;
                          },
                          text: 'Salva modifiche',
                          options: FFButtonOptions(
                            width: 350,
                            height: 56,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            color:
                                FlutterFlowTheme.of(context).loginButtonColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Istok Web',
                                  color: FlutterFlowTheme.of(context)
                                      .logInTextColorButton,
                                ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.safePop();
                          },
                          text: 'Annulla',
                          options: FFButtonOptions(
                            width: 350,
                            height: 56,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context)
                                .transparentButtonsBG,
                            textStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Istok Web',
                                  color: FlutterFlowTheme.of(context)
                                      .audioTeoriaTextButtonColor,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .audioTeoriaButtonBorderColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Widget buildPicker({
    required int itemCount,
    required ValueChanged<int> onSelectedItemChanged,
    required FixedExtentScrollController controller,
    required int selectedValue,
  }) {
    return ListWheelScrollView.useDelegate(
      controller: controller,
      physics: const FixedExtentScrollPhysics(),
      itemExtent: 60.0,
      onSelectedItemChanged: onSelectedItemChanged,
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (context, index) {
          return buildItem(context, index, selectedValue);
        },
        childCount: itemCount,
      ),
    );
  }

  Widget buildItem(BuildContext context, int value, int selectedValue) {
    bool isSelected = value == selectedValue;
    Color color = isSelected
        ? FlutterFlowTheme.of(context).accent1
        : FlutterFlowTheme.of(context).primaryText;

    if (value == (selectedValue - 1) || value == (selectedValue + 1)) {
      color = FlutterFlowTheme.of(context).primaryText;
    }

    return SizedBox(
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (value == selectedValue)
            Container(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 60,
              height: 1,
            ),
          Center(
            child: Text(
              value.toString().padLeft(2, '0'),
              style: TextStyle(
                fontSize: isSelected ? 32 : 32,
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
          if (value == selectedValue)
            Container(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 60,
              height: 1,
            ),
        ],
      ),
    );
  }
}

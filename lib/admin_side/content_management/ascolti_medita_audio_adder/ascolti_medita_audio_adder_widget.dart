import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'ascolti_medita_audio_adder_model.dart';
export 'ascolti_medita_audio_adder_model.dart';

class AscoltiMeditaAudioAdderWidget extends StatefulWidget {
  const AscoltiMeditaAudioAdderWidget({
    super.key,
    required this.parameter1,
  });

  final DocumentReference? parameter1;

  @override
  State<AscoltiMeditaAudioAdderWidget> createState() =>
      _AscoltiMeditaAudioAdderWidgetState();
}

class _AscoltiMeditaAudioAdderWidgetState
    extends State<AscoltiMeditaAudioAdderWidget> {
  late AscoltiMeditaAudioAdderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AscoltiMeditaAudioAdderModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Color(0xB2DEF0FA),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Nome del file audio:',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Istok Web',
                              color: FlutterFlowTheme.of(context).titles,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).textinputBGColor,
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color:
                            FlutterFlowTheme.of(context).textInputBorderColor,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'inserisci il nome',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color:
                                    FlutterFlowTheme.of(context).textInputColor,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Istok Web',
                              color:
                                  FlutterFlowTheme.of(context).textInputColor,
                            ),
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Durata:',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Istok Web',
                              color: FlutterFlowTheme.of(context).titles,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).textinputBGColor,
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color:
                            FlutterFlowTheme.of(context).textInputBorderColor,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'inserisci la durata',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color:
                                    FlutterFlowTheme.of(context).textInputColor,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Istok Web',
                              color:
                                  FlutterFlowTheme.of(context).textInputColor,
                            ),
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Index:',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Istok Web',
                              color: FlutterFlowTheme.of(context).titles,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 350.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).textinputBGColor,
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color:
                            FlutterFlowTheme.of(context).textInputBorderColor,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Inserisci il cardinale per l\'ordine',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Istok Web',
                                color:
                                    FlutterFlowTheme.of(context).textInputColor,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Istok Web',
                              color:
                                  FlutterFlowTheme.of(context).textInputColor,
                            ),
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASCOLTI_MEDITA_AUDIO_ADDER_SELEZIONARE_I');
                      logFirebaseEvent('Button_clear_uploaded_data');
                      setState(() {
                        _model.isDataUploading1 = false;
                        _model.uploadedLocalFile1 =
                            FFUploadedFile(bytes: Uint8List.fromList([]));
                        _model.uploadedFileUrl1 = '';
                      });

                      logFirebaseEvent('Button_upload_file_to_firebase');
                      final selectedFiles = await selectFiles(
                        allowedExtensions: ['mp3'],
                        multiFile: false,
                      );
                      if (selectedFiles != null) {
                        setState(() => _model.isDataUploading1 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedFiles
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedFiles.map(
                              (f) async =>
                                  await uploadData(f.storagePath, f.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading1 = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedFiles.length &&
                            downloadUrls.length == selectedFiles.length) {
                          setState(() {
                            _model.uploadedLocalFile1 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl1 = downloadUrls.first;
                          });
                          showUploadMessage(
                            context,
                            'Success!',
                          );
                        } else {
                          setState(() {});
                          showUploadMessage(
                            context,
                            'Failed to upload file',
                          );
                          return;
                        }
                      }
                    },
                    text: 'Selezionare il file Audio',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 56.0,
                      padding: const EdgeInsets.all(0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).buttonBackGround,
                      textStyle: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Istok Web',
                            color: FlutterFlowTheme.of(context).buttonTextColor,
                            fontSize: 18.0,
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASCOLTI_MEDITA_AUDIO_ADDER_AGGIUNGI_UN\'');
                      logFirebaseEvent('Button_upload_media_to_firebase');
                      final selectedMedia = await selectMedia(
                        maxWidth: 1240.00,
                        maxHeight: 1920.00,
                        imageQuality: 52,
                        mediaSource: MediaSource.photoGallery,
                        multiImage: false,
                      );
                      if (selectedMedia != null &&
                          selectedMedia.every((m) =>
                              validateFileFormat(m.storagePath, context))) {
                        setState(() => _model.isDataUploading2 = true);
                        var selectedUploadedFiles = <FFUploadedFile>[];

                        var downloadUrls = <String>[];
                        try {
                          showUploadMessage(
                            context,
                            'Uploading file...',
                            showLoading: true,
                          );
                          selectedUploadedFiles = selectedMedia
                              .map((m) => FFUploadedFile(
                                    name: m.storagePath.split('/').last,
                                    bytes: m.bytes,
                                    height: m.dimensions?.height,
                                    width: m.dimensions?.width,
                                    blurHash: m.blurHash,
                                  ))
                              .toList();

                          downloadUrls = (await Future.wait(
                            selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes),
                            ),
                          ))
                              .where((u) => u != null)
                              .map((u) => u!)
                              .toList();
                        } finally {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          _model.isDataUploading2 = false;
                        }
                        if (selectedUploadedFiles.length ==
                                selectedMedia.length &&
                            downloadUrls.length == selectedMedia.length) {
                          setState(() {
                            _model.uploadedLocalFile2 =
                                selectedUploadedFiles.first;
                            _model.uploadedFileUrl2 = downloadUrls.first;
                          });
                          showUploadMessage(context, 'Success!');
                        } else {
                          setState(() {});
                          showUploadMessage(context, 'Failed to upload data');
                          return;
                        }
                      }
                    },
                    text: 'Aggiungi un\'immagine',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 56.0,
                      padding: const EdgeInsets.all(0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).buttonBackGround,
                      textStyle: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Istok Web',
                            color: FlutterFlowTheme.of(context).buttonTextColor,
                            fontSize: 18.0,
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASCOLTI_MEDITA_AUDIO_ADDER_REGISTRARE_IL');
                      logFirebaseEvent('Button_backend_call');

                      var ascoltiMeditaRecordReference =
                          AscoltiMeditaRecord.collection.doc();
                      await ascoltiMeditaRecordReference.set({
                        ...createAscoltiMeditaRecordData(
                          title: _model.textController1.text,
                          length: _model.textController2.text,
                          index: int.tryParse(_model.textController3.text),
                          lessonTypeRef: widget.parameter1,
                          audio: _model.uploadedFileUrl1,
                          imageAudio: _model.uploadedFileUrl2,
                        ),
                        ...mapToFirestore(
                          {
                            'created_at': FieldValue.serverTimestamp(),
                          },
                        ),
                      });
                      _model.listMedRef =
                          AscoltiMeditaRecord.getDocumentFromData({
                        ...createAscoltiMeditaRecordData(
                          title: _model.textController1.text,
                          length: _model.textController2.text,
                          index: int.tryParse(_model.textController3.text),
                          lessonTypeRef: widget.parameter1,
                          audio: _model.uploadedFileUrl1,
                          imageAudio: _model.uploadedFileUrl2,
                        ),
                        ...mapToFirestore(
                          {
                            'created_at': DateTime.now(),
                          },
                        ),
                      }, ascoltiMeditaRecordReference);
                      logFirebaseEvent('Button_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'File is created',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: const Duration(milliseconds: 2000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                      logFirebaseEvent('Button_reset_form_fields');
                      setState(() {
                        _model.textController1?.clear();
                        _model.textController2?.clear();
                        _model.textController3?.clear();
                      });
                      logFirebaseEvent('Button_bottom_sheet');
                      Navigator.pop(context);

                      setState(() {});
                    },
                    text: valueOrDefault<String>(
                      'Aggiungere l\'audio alla lezione: ',
                      'Inserire il nome dell\'audio',
                    ),
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 56.0,
                      padding: const EdgeInsets.all(0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).buttonBackGround,
                      textStyle: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Istok Web',
                            color: FlutterFlowTheme.of(context).buttonTextColor,
                            fontSize: 18.0,
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'ASCOLTI_MEDITA_AUDIO_ADDER_CHIUDERE_BTN_');
                      logFirebaseEvent('Button_bottom_sheet');
                      Navigator.pop(context);
                    },
                    text: 'Chiudere',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 56.0,
                      padding: const EdgeInsets.all(0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).buttonBackGround,
                      textStyle: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .override(
                            fontFamily: 'Istok Web',
                            color: FlutterFlowTheme.of(context).buttonTextColor,
                            fontSize: 18.0,
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

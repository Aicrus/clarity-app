import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'keep_audio_widget_dont_delete_model.dart';
export 'keep_audio_widget_dont_delete_model.dart';

class KeepAudioWidgetDontDeleteWidget extends StatefulWidget {
  const KeepAudioWidgetDontDeleteWidget({super.key});

  @override
  State<KeepAudioWidgetDontDeleteWidget> createState() =>
      _KeepAudioWidgetDontDeleteWidgetState();
}

class _KeepAudioWidgetDontDeleteWidgetState
    extends State<KeepAudioWidgetDontDeleteWidget> {
  late KeepAudioWidgetDontDeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KeepAudioWidgetDontDeleteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowAudioPlayer(
      audio: Audio.network(
        'https://filesamples.com/samples/audio/mp3/sample3.mp3',
        metas: Metas(
          id: 'sample3.mp3-641b9ef8',
        ),
      ),
      titleTextStyle: FlutterFlowTheme.of(context).titleLarge,
      playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium,
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      playbackButtonColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).alternate,
      elevation: 4.0,
      playInBackground: PlayInBackground.disabledRestoreOnForeground,
    );
  }
}

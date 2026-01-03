import 'package:clarity/custom_code/widgets/custom_audio_player.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'meditazioniplayer_ascolti_model.dart';
export 'meditazioniplayer_ascolti_model.dart';

class MeditazioniplayerAscoltiWidget extends StatefulWidget {
  const MeditazioniplayerAscoltiWidget({
    super.key,
    required this.audioPathDocTeoria,
    required this.image,
  });

  final AscoltiMeditaRecord? audioPathDocTeoria;
  final String? image;

  @override
  State<MeditazioniplayerAscoltiWidget> createState() =>
      _MeditazioniplayerAscoltiWidgetState();
}

class _MeditazioniplayerAscoltiWidgetState
    extends State<MeditazioniplayerAscoltiWidget> {
  late MeditazioniplayerAscoltiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditazioniplayerAscoltiModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();
    AudioPlayerManager().stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 6,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MEDITAZIONIPLAYER_ASCOLTI_Container_0st6');
                  logFirebaseEvent('Container_bottom_sheet');
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: const BoxDecoration(),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 150.0,
              child: custom_widgets.CustomAudioPlayer(
                width: double.infinity,
                height: 150.0,
                audio: widget.audioPathDocTeoria!.audio,
                title: widget.audioPathDocTeoria!.title,
                image: valueOrDefault<String>(
                  widget.audioPathDocTeoria?.imageAudio,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png',
                ),
              ),
            ),
            wrapWithModel(
              model: _model.meditaNavBarModel,
              updateCallback: () => setState(() {}),
              child: const MeditaNavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

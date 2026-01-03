import 'package:clarity/custom_code/widgets/custom_audio_player.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_side/components/nav_bar/medita_nav_bar/medita_nav_bar_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'meditazioniplayer_teoria_model.dart';
export 'meditazioniplayer_teoria_model.dart';

class MeditazioniplayerTeoriaWidget extends StatefulWidget {
  const MeditazioniplayerTeoriaWidget({
    super.key,
    required this.audioPathDocTeoria,
    required this.image,
  });

  final AudioTeoriaRecord? audioPathDocTeoria;
  final String? image;

  @override
  State<MeditazioniplayerTeoriaWidget> createState() =>
      _MeditazioniplayerTeoriaWidgetState();
}

class _MeditazioniplayerTeoriaWidgetState
    extends State<MeditazioniplayerTeoriaWidget> {
  late MeditazioniplayerTeoriaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeditazioniplayerTeoriaModel());

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
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MEDITAZIONIPLAYER_TEORIA_Container_0jjtr');
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
                audio: widget.audioPathDocTeoria!.audioTeoria,
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

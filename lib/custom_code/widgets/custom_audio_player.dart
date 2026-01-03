// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// Imports other custom widgets
// Imports custom actions
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;
import 'package:clarity/flutter_flow/flutter_flow_audio_player.dart';
export 'package:assets_audio_player/assets_audio_player.dart';

class CustomAudioPlayer extends StatefulWidget {
  const CustomAudioPlayer({
    Key? key,
    this.width,
    this.height,
    required this.audio,
    required this.title,
    this.image,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String audio;
  final String title;
  final String? image;

  @override
  _CustomAudioPlayerState createState() => _CustomAudioPlayerState();
}

class _CustomAudioPlayerState extends State<CustomAudioPlayer> with RouteAware {
  bool _subscribedRoute = false;
  late AudioPlayerManager _audioPlayerManager;

  @override
  void initState() {
    super.initState();
    _audioPlayerManager = AudioPlayerManager();
    playAudio();
  }

  void playAudio() {
    final audio = Audio.network(
      widget.audio,
      metas: Metas(
        id: widget.title,
        title: widget.title,
        image: MetasImage(
          path: widget.image ??
              "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/clarity-f2mtym/assets/e3l8htvsf7nn/2.png",
          type: ImageType.network,
        ),
      ),
    );
    _audioPlayerManager.play(audio);
  }

  @override
  void dispose() {
    if (_subscribedRoute) {
      routeObserver.unsubscribe(this);
    }
    _audioPlayerManager.stop();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant CustomAudioPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.audio != widget.audio) {
      playAudio();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context) is PageRoute) {
      _subscribedRoute = true;
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    }
  }

  Duration currentPosition(RealtimePlayingInfos infos) => infos.currentPosition;
  Duration duration(RealtimePlayingInfos infos) => infos.duration;

  String playbackStateText(RealtimePlayingInfos infos) {
    final currentPositionString = durationToString(currentPosition(infos));
    final durationString = durationToString(duration(infos));
    return '$currentPositionString/$durationString';
  }

  @override
  Widget build(BuildContext context) {
    final currentPlayer = _audioPlayerManager._currentPlayer;
    if (currentPlayer == null) {
      return SizedBox.shrink();
    }

    return currentPlayer.builderRealtimePlayingInfos(
      builder: (context, infos) {
        return PlayerBuilder.isPlaying(
          player: currentPlayer,
          builder: (context, isPlaying) {
            final childWidget = Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).gradientTop,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: currentPlayer.playOrPause,
                            child: SvgPicture.network(
                              isPlaying
                                  ? 'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/pause.svg?alt=media&token=b88f57f6-8184-4f61-82fd-8a60d4086d90'
                                  : 'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/play-circle.svg?alt=media&token=14c34c1e-3c18-4793-8abb-c82ae257d63e',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 220,
                              child: Text(
                                widget.title,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color:
                                          FlutterFlowTheme.of(context).titles,
                                    ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                playbackStateText(infos),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .subTextColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  PositionSeekMizzUpWidget(
                    currentPosition: currentPosition(infos),
                    duration: duration(infos),
                    seekTo: (to) => currentPlayer.seek(to),
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  ),
                ],
              ),
            );
            return Material(
              color: Colors.transparent,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: childWidget,
            );
          },
        );
      },
    );
  }
}

class NavAudioPlayer extends StatefulWidget {
  const NavAudioPlayer({
    Key? key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? image;

  @override
  _NavAudioPlayerState createState() => _NavAudioPlayerState();
}

class _NavAudioPlayerState extends State<NavAudioPlayer> with RouteAware {
  AudioPlayerManager _audioPlayerManager = AudioPlayerManager();

  Duration currentPosition(RealtimePlayingInfos infos) => infos.currentPosition;
  Duration duration(RealtimePlayingInfos infos) => infos.duration;

  String playbackStateText(RealtimePlayingInfos infos) {
    final currentPositionString = durationToString(currentPosition(infos));
    final durationString = durationToString(duration(infos));
    return '$currentPositionString/$durationString';
  }

  @override
  Widget build(BuildContext context) {
    final currentPlayer = _audioPlayerManager._currentPlayer;
    if (currentPlayer == null) {
      return SizedBox.shrink();
    }

    return currentPlayer.builderRealtimePlayingInfos(
      builder: (context, infos) {
        return PlayerBuilder.isPlaying(
          player: currentPlayer,
          builder: (context, isPlaying) {
            final childWidget = Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).topNavBarBGColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: currentPlayer.playOrPause,
                            child: SvgPicture.network(
                              isPlaying
                                  ? 'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/pause.svg?alt=media&token=b88f57f6-8184-4f61-82fd-8a60d4086d90'
                                  : 'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/play-circle.svg?alt=media&token=14c34c1e-3c18-4793-8abb-c82ae257d63e',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 220,
                              child: Text(
                                FFAppState().currentAudioTitle,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .subTextColor,
                                      fontSize: 15.0,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                playbackStateText(infos),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Istok Web',
                                      color: FlutterFlowTheme.of(context)
                                          .subTextColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(34),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              currentPlayer.stop();
                              FFAppState().hideAudioBar();
                            },
                            child: SvgPicture.network(
                              'https://firebasestorage.googleapis.com/v0/b/clarity-878d9.appspot.com/o/close-circle.svg?alt=media&token=7364c0c8-83d7-4013-85cb-49a80193923f',
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  PositionSeekMizzUpWidget(
                    currentPosition: currentPosition(infos),
                    duration: duration(infos),
                    seekTo: (to) => currentPlayer.seek(to),
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  ),
                ],
              ),
            );
            return Material(
              color: Colors.transparent,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: childWidget,
            );
          },
        );
      },
    );
  }
}

class PositionSeekMizzUpWidget extends StatefulWidget {
  const PositionSeekMizzUpWidget({
    Key? key,
    required this.currentPosition,
    required this.duration,
    required this.seekTo,
    required this.activeTrackColor,
  }) : super(key: key);

  final Duration currentPosition;
  final Duration duration;
  final Function(Duration) seekTo;
  final Color activeTrackColor;

  @override
  _PositionSeekWidgetState createState() => _PositionSeekWidgetState();
}

class _PositionSeekWidgetState extends State<PositionSeekMizzUpWidget> {
  late Duration _visibleValue;
  bool listenOnlyUserInteraction = false;

  double get percent => widget.duration.inMilliseconds == 0
      ? 0
      : _visibleValue.inMilliseconds / widget.duration.inMilliseconds;

  @override
  void initState() {
    super.initState();
    _visibleValue = widget.currentPosition;
  }

  @override
  void didUpdateWidget(covariant PositionSeekMizzUpWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!listenOnlyUserInteraction) {
      _visibleValue = widget.currentPosition;
    }
  }

  @override
  Widget build(BuildContext context) => SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: widget.activeTrackColor,
          inactiveTrackColor: const Color.fromARGB(255, 11, 24, 39),
          trackShape: const FlutterFlowRoundedRectSliderTrackShape(),
          trackHeight: 6.0,
          thumbShape: SliderComponentShape.noThumb,
          overlayColor: const Color(0xFF57636C).withAlpha(32),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 12.0),
        ),
        child: Slider(
          min: 0,
          max: widget.duration.inMilliseconds.toDouble(),
          value: math.min(1.0, percent) *
              widget.duration.inMilliseconds.toDouble(),
          onChangeEnd: (newValue) => setState(() {
            listenOnlyUserInteraction = false;
            widget.seekTo(_visibleValue);
          }),
          onChangeStart: (_) =>
              setState(() => listenOnlyUserInteraction = true),
          onChanged: (newValue) => setState(
              () => _visibleValue = Duration(milliseconds: newValue.floor())),
        ),
      );
}

String durationToString(Duration duration) {
  String twoDigits(int n) => (n >= 10) ? '$n' : '0$n';

  final twoDigitMinutes =
      twoDigits(duration.inMinutes.remainder(Duration.minutesPerHour).toInt());
  final twoDigitSeconds = twoDigits(
      duration.inSeconds.remainder(Duration.secondsPerMinute).toInt());
  return '$twoDigitMinutes:$twoDigitSeconds';
}

// Singleton Audio pour n'avoir qu'une seule instance
class AudioPlayerManager {
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal();

  AssetsAudioPlayer? _currentPlayer;

  void play(Audio audio) async {
    _currentPlayer?.stop();
    _currentPlayer = AssetsAudioPlayer.newPlayer();
    await _currentPlayer!.open(
      audio,
      autoStart: true,
      playInBackground: PlayInBackground.enabled,
      showNotification: true,
    );
    FFAppState().showAudioBar();
    FFAppState().currentAudioTitle = audio.path;
    FFAppState().currentAudioTitle = audio.metas.title!;
  }

  void stop() {
    _currentPlayer?.stop();
    _currentPlayer = null;
    FFAppState().hideAudioBar();
    FFAppState().currentAudioTitle = '';
    FFAppState().currentAudioTitle = '';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/audio/audio_bloc.dart';
import '../../../domain/songs/audio.dart';
import '../../core/app_size_manage.dart';
import '../../core/widgets.dart';

class PlayScreenImageWidget extends StatelessWidget {
  const PlayScreenImageWidget({
    super.key,
    required this.audio,
  });

  final Audio audio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppMediaQueryManager.width / 1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: FutureBuilder(
                future: context
                    .read<AudioBloc>()
                    .fetchAudioData(audioPath: audio.audioPath),
                builder: (context, snapshot) {
                  return CustomImageWidget(
                    image: snapshot.data,
                    height: AppMediaQueryManager.width / 1.2,
                    width: AppMediaQueryManager.width,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering

import 'package:flutter/widgets.dart';

class $AssetsFlutterI18nGen {
  const $AssetsFlutterI18nGen();

  $AssetsFlutterI18nEnGen get en => const $AssetsFlutterI18nEnGen();
  $AssetsFlutterI18nRuGen get ru => const $AssetsFlutterI18nRuGen();
}

class $AssetsFlutterI18nEnGen {
  const $AssetsFlutterI18nEnGen();

  /// File path: assets\flutter_i18n\en\test.json
  String get test => 'assets/flutter_i18n/en/test.json';
}

class $AssetsFlutterI18nRuGen {
  const $AssetsFlutterI18nRuGen();

  /// File path: assets\flutter_i18n\ru\test.json
  String get test => 'assets/flutter_i18n/ru/test.json';
}

class Assets {
  Assets._();

  static const $AssetsFlutterI18nGen flutterI18n = $AssetsFlutterI18nGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

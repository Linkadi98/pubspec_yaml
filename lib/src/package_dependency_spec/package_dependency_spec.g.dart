// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dependency_spec.dart';

// **************************************************************************
// SumTypesGenerator
// **************************************************************************

// ignore_for_file: unused_element
abstract class _$PackageDependencySpec {
  const _$PackageDependencySpec({
    this.sdk,
    this.git,
    this.path,
    this.hosted,
  }) : assert(sdk != null && git == null && path == null && hosted == null ||
            sdk == null && git != null && path == null && hosted == null ||
            sdk == null && git == null && path != null && hosted == null ||
            sdk == null && git == null && path == null && hosted != null);
  static PackageDependencySpec
      load<$T extends PackageDependencySpecRecordBase<$T>>(
    $T rec,
  ) {
    if (rec.sdk != null &&
        rec.git == null &&
        rec.path == null &&
        rec.hosted == null) {
      return PackageDependencySpec.sdk(rec.sdk!);
    } else if (rec.sdk == null &&
        rec.git != null &&
        rec.path == null &&
        rec.hosted == null) {
      return PackageDependencySpec.git(rec.git!);
    } else if (rec.sdk == null &&
        rec.git == null &&
        rec.path != null &&
        rec.hosted == null) {
      return PackageDependencySpec.path(rec.path!);
    } else if (rec.sdk == null &&
        rec.git == null &&
        rec.path == null &&
        rec.hosted != null) {
      return PackageDependencySpec.hosted(rec.hosted!);
    } else {
      throw Exception("Cannot select a $PackageDependencySpec case given $rec");
    }
  }

  $T dump<$T>(
    $T Function({
      SdkPackageDependencySpec? sdk,
      GitPackageDependencySpec? git,
      PathPackageDependencySpec? path,
      HostedPackageDependencySpec? hosted,
    }) make,
  ) =>
      iswitch(
        sdk: (sdk) => make(sdk: sdk),
        git: (git) => make(git: git),
        path: (path) => make(path: path),
        hosted: (hosted) => make(hosted: hosted),
      );
  $T iswitch<$T>({
    required $T Function(SdkPackageDependencySpec) sdk,
    required $T Function(GitPackageDependencySpec) git,
    required $T Function(PathPackageDependencySpec) path,
    required $T Function(HostedPackageDependencySpec) hosted,
  }) {
    if (this.sdk != null) {
      return sdk(this.sdk!);
    } else if (this.git != null) {
      return git(this.git!);
    } else if (this.path != null) {
      return path(this.path!);
    } else if (this.hosted != null) {
      return hosted(this.hosted!);
    } else {
      throw StateError(
          "an instance of $PackageDependencySpec has no case selected");
    }
  }

  $T iswitcho<$T>({
    required $T Function() otherwise,
    $T Function(SdkPackageDependencySpec)? sdk,
    $T Function(GitPackageDependencySpec)? git,
    $T Function(PathPackageDependencySpec)? path,
    $T Function(HostedPackageDependencySpec)? hosted,
  }) {
    $T _otherwise(Object? _) => otherwise();
    return iswitch(
      sdk: sdk ?? _otherwise,
      git: git ?? _otherwise,
      path: path ?? _otherwise,
      hosted: hosted ?? _otherwise,
    );
  }

  @override
  bool operator ==(
    Object other,
  ) =>
      other.runtimeType == runtimeType &&
      other is PackageDependencySpec &&
      other.sdk == sdk &&
      other.git == git &&
      other.path == path &&
      other.hosted == hosted;
  @override
  int get hashCode {
    var result = 17;
    result = 37 * result + sdk.hashCode;
    result = 37 * result + git.hashCode;
    result = 37 * result + path.hashCode;
    result = 37 * result + hosted.hashCode;
    return result;
  }

  @override
  String toString() {
    final ctor = iswitch(
      sdk: (value) => "sdk($value)",
      git: (value) => "git($value)",
      path: (value) => "path($value)",
      hosted: (value) => "hosted($value)",
    );
    return "$runtimeType.$ctor";
  }

  @protected
  final SdkPackageDependencySpec? sdk;
  @protected
  final GitPackageDependencySpec? git;
  @protected
  final PathPackageDependencySpec? path;
  @protected
  final HostedPackageDependencySpec? hosted;
}

abstract class PackageDependencySpecRecordBase<Self> {
  SdkPackageDependencySpec? get sdk;
  GitPackageDependencySpec? get git;
  PathPackageDependencySpec? get path;
  HostedPackageDependencySpec? get hosted;
}

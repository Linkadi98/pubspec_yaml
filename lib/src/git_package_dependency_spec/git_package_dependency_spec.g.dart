// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_package_dependency_spec.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class _$GitPackageDependencySpec {
  const _$GitPackageDependencySpec();

  String get package;
  String get url;
  Optional<String> get ref;
  Optional<String> get path;

  GitPackageDependencySpec copyWith({
    String? package,
    String? url,
    Optional<String>? ref,
    Optional<String>? path,
  }) =>
      GitPackageDependencySpec(
        package: package ?? this.package,
        url: url ?? this.url,
        ref: ref ?? this.ref,
        path: path ?? this.path,
      );

  GitPackageDependencySpec copyUsing(
      void Function(_GitPackageDependencySpec$Change change) mutator) {
    final change = _GitPackageDependencySpec$Change._(
      this.package,
      this.url,
      this.ref,
      this.path,
    );
    mutator(change);
    return GitPackageDependencySpec(
      package: change.package,
      url: change.url,
      ref: change.ref,
      path: change.path,
    );
  }

  @override
  String toString() =>
      "GitPackageDependencySpec(package: $package, url: $url, ref: $ref, path: $path)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is GitPackageDependencySpec &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      url == other.url &&
      ref == other.ref &&
      path == other.path;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + url.hashCode;
    result = 37 * result + ref.hashCode;
    result = 37 * result + path.hashCode;
    return result;
  }
}

class _GitPackageDependencySpec$Change {
  _GitPackageDependencySpec$Change._(
    this.package,
    this.url,
    this.ref,
    this.path,
  );

  String package;
  String url;
  Optional<String> ref;
  Optional<String> path;
}

// ignore: avoid_classes_with_only_static_members
class GitPackageDependencySpec$ {
  static final package = Lens<GitPackageDependencySpec, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final url = Lens<GitPackageDependencySpec, String>(
    (urlContainer) => urlContainer.url,
    (urlContainer, url) => urlContainer.copyWith(url: url),
  );

  static final ref = Lens<GitPackageDependencySpec, Optional<String>>(
    (refContainer) => refContainer.ref,
    (refContainer, ref) => refContainer.copyWith(ref: ref),
  );

  static final path = Lens<GitPackageDependencySpec, Optional<String>>(
    (pathContainer) => pathContainer.path,
    (pathContainer, path) => pathContainer.copyWith(path: path),
  );
}

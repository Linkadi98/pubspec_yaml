// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hosted_package_dependency_spec.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class _$HostedPackageDependencySpec {
  const _$HostedPackageDependencySpec();

  String get package;
  Optional<String> get version;
  Optional<String> get hosted;

  HostedPackageDependencySpec copyWith({
    String? package,
    Optional<String>? version,
    Optional<String>? hosted,
  }) =>
      HostedPackageDependencySpec(
        package: package ?? this.package,
        version: version ?? this.version,
        hosted: hosted ?? this.hosted,
      );

  HostedPackageDependencySpec copyUsing(
      void Function(_HostedPackageDependencySpec$Change change) mutator) {
    final change = _HostedPackageDependencySpec$Change._(
      this.package,
      this.version,
      this.hosted,
    );
    mutator(change);
    return HostedPackageDependencySpec(
      package: change.package,
      version: change.version,
      hosted: change.hosted,
    );
  }

  @override
  String toString() =>
      "HostedPackageDependencySpec(package: $package, version: $version, hosted: $hosted)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is HostedPackageDependencySpec &&
      other.runtimeType == runtimeType &&
      package == other.package &&
      version == other.version &&
      hosted == other.hosted;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + package.hashCode;
    result = 37 * result + version.hashCode;
    result = 37 * result + hosted.hashCode;
    return result;
  }
}

class _HostedPackageDependencySpec$Change {
  _HostedPackageDependencySpec$Change._(
    this.package,
    this.version,
    this.hosted,
  );

  String package;
  Optional<String> version;
  Optional<String> hosted;
}

// ignore: avoid_classes_with_only_static_members
class HostedPackageDependencySpec$ {
  static final package = Lens<HostedPackageDependencySpec, String>(
    (packageContainer) => packageContainer.package,
    (packageContainer, package) => packageContainer.copyWith(package: package),
  );

  static final version = Lens<HostedPackageDependencySpec, Optional<String>>(
    (versionContainer) => versionContainer.version,
    (versionContainer, version) => versionContainer.copyWith(version: version),
  );

  static final hosted = Lens<HostedPackageDependencySpec, Optional<String>>(
    (hostedContainer) => hostedContainer.hosted,
    (hostedContainer, hosted) => hostedContainer.copyWith(hosted: hosted),
  );
}

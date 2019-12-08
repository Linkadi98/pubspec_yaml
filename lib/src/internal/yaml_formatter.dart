/*
 * MIT License
 *
 * Copyright (c) 2019 Alexei Sintotski
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

import 'package:json2yaml/json2yaml.dart';
import 'package:pubspec_yaml/pubspec_yaml.dart';
import 'package:pubspec_yaml/src/dependency_specs/sdk_package_dependency_spec.dart';
import 'package:pubspec_yaml/src/internal/tokens.dart';
import 'package:pubspec_yaml/src/package_dependency_spec.dart';

String formatToYaml(PubspecYaml pubspecYaml) => '${[
      _packageMetadataToYaml(pubspecYaml),
      if (pubspecYaml.dependencies.isNotEmpty) _packageDependenciesToYaml(pubspecYaml.dependencies),
    ].join("\n\n")}\n';

String _packageMetadataToYaml(PubspecYaml pubspecYaml) => json2yaml(<String, dynamic>{
      Tokens.name: pubspecYaml.name,
      if (pubspecYaml.version.hasValue) Tokens.version: pubspecYaml.version.valueOr(() => ''),
      if (pubspecYaml.description.hasValue) Tokens.description: pubspecYaml.description.valueOr(() => ''),
      if (pubspecYaml.authors.length == 1) Tokens.author: pubspecYaml.authors.first,
      if (pubspecYaml.authors.length > 1) Tokens.authors: pubspecYaml.authors,
      if (pubspecYaml.homepage.hasValue) Tokens.homepage: pubspecYaml.homepage.valueOr(() => ''),
      if (pubspecYaml.repository.hasValue) Tokens.repository: pubspecYaml.repository.valueOr(() => ''),
      if (pubspecYaml.issueTracker.hasValue) Tokens.issueTracker: pubspecYaml.issueTracker.valueOr(() => ''),
      if (pubspecYaml.documentation.hasValue) Tokens.documentation: pubspecYaml.documentation.valueOr(() => ''),
      for (final field in pubspecYaml.customFields.keys) field: pubspecYaml.customFields[field],
    }, yamlStyle: YamlStyle.pubspecYaml);

String _packageDependenciesToYaml(Iterable<PackageDependencySpec> dependencies) => json2yaml(<String, dynamic>{
      Tokens.dependencies: Map<String, dynamic>.fromEntries(dependencies.map((dep) => dep.iswitch(
            sdk: _sdkPackageDependencyToJson,
          ))),
    }, yamlStyle: YamlStyle.pubspecYaml);

MapEntry<String, dynamic> _sdkPackageDependencyToJson(SdkPackageDependencySpec dep) => MapEntry<String, dynamic>(
      dep.package,
      <String, dynamic>{
        Tokens.sdk: dep.sdk,
        if (dep.version.hasValue) Tokens.version: dep.version.valueOr(() => ''),
      },
    );

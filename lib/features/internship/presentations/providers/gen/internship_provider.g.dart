// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../internship_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$internshipRepositoryHash() =>
    r'0247d669e40d090edb0857c954d0b294839510e8';

/// See also [internshipRepository].
@ProviderFor(internshipRepository)
final internshipRepositoryProvider = Provider<InternshipRepository>.internal(
  internshipRepository,
  name: r'internshipRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$internshipRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InternshipRepositoryRef = ProviderRef<InternshipRepository>;
String _$searchInternshipUseCaseHash() =>
    r'1a03359caee5b69a7a795dc7292347a222a565e8';

/// See also [searchInternshipUseCase].
@ProviderFor(searchInternshipUseCase)
final searchInternshipUseCaseProvider =
    Provider<SearchInternshipUseCase>.internal(
  searchInternshipUseCase,
  name: r'searchInternshipUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchInternshipUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchInternshipUseCaseRef = ProviderRef<SearchInternshipUseCase>;
String _$searchInternshipHash() => r'14be007e95d24d49fadb118c5e333827a594d6bc';

/// See also [searchInternship].
@ProviderFor(searchInternship)
final searchInternshipProvider = FutureProvider<List<InternshipsMeta>>.internal(
  searchInternship,
  name: r'searchInternshipProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchInternshipHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchInternshipRef = FutureProviderRef<List<InternshipsMeta>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

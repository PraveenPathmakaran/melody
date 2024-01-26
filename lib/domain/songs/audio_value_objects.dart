import 'package:dartz/dartz.dart';
import 'package:melody/domain/core/value_failures.dart';
import 'package:melody/domain/core/value_objects.dart';
import 'package:melody/domain/core/value_validators.dart';

class Name extends ValueObjects<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(validateStringNotEmpty(input));
  }

  Name._(this.value);
}

class Artist extends ValueObjects<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Artist(String input) {
    return Artist._(validateStringNotEmpty(input));
  }

  Artist._(this.value);
}

class AudioPath extends ValueObjects<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory AudioPath(String input) {
    return AudioPath._(validateStringNotEmpty(input));
  }

  AudioPath._(this.value);
}

class Duration extends ValueObjects<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Duration(String input) {
    return Duration._(validateStringNotEmpty(input));
  }

  Duration._(this.value);
}

class Id extends ValueObjects<String> {
  @override
  Either<ValueFailure<String>, String> value;

  factory Id(String input) {
    return Id._(validateStringNotEmpty(input));
  }

  Id._(this.value);
}

import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:image/image.dart' as img;
import 'package:melody/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<Duration>, Duration> validateDuration(int input) {
  try {
    final duration = Duration(seconds: input);
    return right(duration);
  } catch (e) {
    return left(
        const ValueFailure.invalidDuration(failedValue: Duration(seconds: 0)));
  }
}

Either<ValueFailure<Uint8List>, Uint8List> validateImage(Uint8List input) {
  try {
    // Try to decode the image
    img.decodeImage(input);

    // If decoding is successful, the image is valid
    return right(input);
  } catch (e) {
    // If an exception occurs, the image is invalid
    return left(ValueFailure.invalidImage(failedValue: input));
  }
}

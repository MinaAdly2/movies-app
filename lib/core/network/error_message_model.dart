import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final bool success;
  final int statusCode;
  final String statusMessage;

  const ErrorMessageModel(
      {required this.success,
      required this.statusCode,
      required this.statusMessage});

  factory ErrorMessageModel.fromJson({required Map<String, dynamic> json}) =>
      ErrorMessageModel(
          success: json["status_message"],
          statusCode: json["status_code"],
          statusMessage: json["success"]);

  @override
  List<Object?> get props => [success, statusCode, statusMessage];
}

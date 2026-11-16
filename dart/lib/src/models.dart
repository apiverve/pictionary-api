/// Response models for the Pictionary Generator API.

/// API Response wrapper.
class PictionaryResponse {
  final String status;
  final dynamic error;
  final PictionaryData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PictionaryResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PictionaryResponse.fromJson(Map<String, dynamic> json) => PictionaryResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PictionaryData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Pictionary Generator API.

class PictionaryData {
  List<String>? words;
  num? count;
  String? difficulty;

  PictionaryData({
    this.words,
    this.count,
    this.difficulty,
  });

  factory PictionaryData.fromJson(Map<String, dynamic> json) => PictionaryData(
      words: (json['words'] as List?)?.cast<String>(),
      count: json['count'],
      difficulty: json['difficulty'],
    );
}

class PictionaryRequest {
  String? difficulty;
  int? count;

  PictionaryRequest({
    this.difficulty,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      if (difficulty != null) 'difficulty': difficulty,
      if (count != null) 'count': count,
    };
}

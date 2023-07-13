// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionModel {
  String get date => throw _privateConstructorUsedError;
  List<HistoryInfo> get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call({String date, List<HistoryInfo> info});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<HistoryInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<HistoryInfo> info});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? info = null,
  }) {
    return _then(_$_TransactionModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<HistoryInfo>,
    ));
  }
}

/// @nodoc

class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {required this.date, required final List<HistoryInfo> info})
      : _info = info;

  @override
  final String date;
  final List<HistoryInfo> _info;
  @override
  List<HistoryInfo> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  String toString() {
    return 'TransactionModel(date: $date, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {required final String date,
      required final List<HistoryInfo> info}) = _$_TransactionModel;

  @override
  String get date;
  @override
  List<HistoryInfo> get info;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryInfo {
  String get status => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get secondName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get assetImageUrl => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryInfoCopyWith<HistoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryInfoCopyWith<$Res> {
  factory $HistoryInfoCopyWith(
          HistoryInfo value, $Res Function(HistoryInfo) then) =
      _$HistoryInfoCopyWithImpl<$Res, HistoryInfo>;
  @useResult
  $Res call(
      {String status,
      String firstName,
      String paymentMode,
      String? bankName,
      String? secondName,
      String phone,
      String description,
      String type,
      String amount,
      String time,
      String assetImageUrl,
      bool isFavourite});
}

/// @nodoc
class _$HistoryInfoCopyWithImpl<$Res, $Val extends HistoryInfo>
    implements $HistoryInfoCopyWith<$Res> {
  _$HistoryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? firstName = null,
    Object? paymentMode = null,
    Object? bankName = freezed,
    Object? secondName = freezed,
    Object? phone = null,
    Object? description = null,
    Object? type = null,
    Object? amount = null,
    Object? time = null,
    Object? assetImageUrl = null,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      assetImageUrl: null == assetImageUrl
          ? _value.assetImageUrl
          : assetImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryInfoCopyWith<$Res>
    implements $HistoryInfoCopyWith<$Res> {
  factory _$$_HistoryInfoCopyWith(
          _$_HistoryInfo value, $Res Function(_$_HistoryInfo) then) =
      __$$_HistoryInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String firstName,
      String paymentMode,
      String? bankName,
      String? secondName,
      String phone,
      String description,
      String type,
      String amount,
      String time,
      String assetImageUrl,
      bool isFavourite});
}

/// @nodoc
class __$$_HistoryInfoCopyWithImpl<$Res>
    extends _$HistoryInfoCopyWithImpl<$Res, _$_HistoryInfo>
    implements _$$_HistoryInfoCopyWith<$Res> {
  __$$_HistoryInfoCopyWithImpl(
      _$_HistoryInfo _value, $Res Function(_$_HistoryInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? firstName = null,
    Object? paymentMode = null,
    Object? bankName = freezed,
    Object? secondName = freezed,
    Object? phone = null,
    Object? description = null,
    Object? type = null,
    Object? amount = null,
    Object? time = null,
    Object? assetImageUrl = null,
    Object? isFavourite = null,
  }) {
    return _then(_$_HistoryInfo(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      assetImageUrl: null == assetImageUrl
          ? _value.assetImageUrl
          : assetImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HistoryInfo implements _HistoryInfo {
  const _$_HistoryInfo(
      {required this.status,
      required this.firstName,
      required this.paymentMode,
      this.bankName,
      this.secondName,
      required this.phone,
      required this.description,
      required this.type,
      required this.amount,
      required this.time,
      required this.assetImageUrl,
      this.isFavourite = false});

  @override
  final String status;
  @override
  final String firstName;
  @override
  final String paymentMode;
  @override
  final String? bankName;
  @override
  final String? secondName;
  @override
  final String phone;
  @override
  final String description;
  @override
  final String type;
  @override
  final String amount;
  @override
  final String time;
  @override
  final String assetImageUrl;
  @override
  @JsonKey()
  final bool isFavourite;

  @override
  String toString() {
    return 'HistoryInfo(status: $status, firstName: $firstName, paymentMode: $paymentMode, bankName: $bankName, secondName: $secondName, phone: $phone, description: $description, type: $type, amount: $amount, time: $time, assetImageUrl: $assetImageUrl, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryInfo &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.assetImageUrl, assetImageUrl) ||
                other.assetImageUrl == assetImageUrl) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      firstName,
      paymentMode,
      bankName,
      secondName,
      phone,
      description,
      type,
      amount,
      time,
      assetImageUrl,
      isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryInfoCopyWith<_$_HistoryInfo> get copyWith =>
      __$$_HistoryInfoCopyWithImpl<_$_HistoryInfo>(this, _$identity);
}

abstract class _HistoryInfo implements HistoryInfo {
  const factory _HistoryInfo(
      {required final String status,
      required final String firstName,
      required final String paymentMode,
      final String? bankName,
      final String? secondName,
      required final String phone,
      required final String description,
      required final String type,
      required final String amount,
      required final String time,
      required final String assetImageUrl,
      final bool isFavourite}) = _$_HistoryInfo;

  @override
  String get status;
  @override
  String get firstName;
  @override
  String get paymentMode;
  @override
  String? get bankName;
  @override
  String? get secondName;
  @override
  String get phone;
  @override
  String get description;
  @override
  String get type;
  @override
  String get amount;
  @override
  String get time;
  @override
  String get assetImageUrl;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryInfoCopyWith<_$_HistoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

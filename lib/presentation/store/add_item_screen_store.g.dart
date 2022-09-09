// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddTodoStore on _TodoAddItems, Store {
  late final _$item_nameAtom =
      Atom(name: '_TodoAddItems.item_name', context: context);

  @override
  String get item_name {
    _$item_nameAtom.reportRead();
    return super.item_name;
  }

  @override
  set item_name(String value) {
    _$item_nameAtom.reportWrite(value, super.item_name, () {
      super.item_name = value;
    });
  }

  late final _$item_desAtom =
      Atom(name: '_TodoAddItems.item_des', context: context);

  @override
  String get item_des {
    _$item_desAtom.reportRead();
    return super.item_des;
  }

  @override
  set item_des(String value) {
    _$item_desAtom.reportWrite(value, super.item_des, () {
      super.item_des = value;
    });
  }

  late final _$msgAtom = Atom(name: '_TodoAddItems.msg', context: context);

  @override
  String get msg {
    _$msgAtom.reportRead();
    return super.msg;
  }

  @override
  set msg(String value) {
    _$msgAtom.reportWrite(value, super.msg, () {
      super.msg = value;
    });
  }

  late final _$validateInputsAsyncAction =
      AsyncAction('_TodoAddItems.validateInputs', context: context);

  @override
  Future validateInputs() {
    return _$validateInputsAsyncAction.run(() => super.validateInputs());
  }

  @override
  String toString() {
    return '''
item_name: ${item_name},
item_des: ${item_des},
msg: ${msg}
    ''';
  }
}

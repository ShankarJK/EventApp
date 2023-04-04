// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$categoryAtom =
      Atom(name: '_HomeScreenModelBase.category', context: context);

  @override
  List<String> get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(List<String> value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$eventDetailsAtom =
      Atom(name: '_HomeScreenModelBase.eventDetails', context: context);

  @override
  List<EventBO> get eventDetails {
    _$eventDetailsAtom.reportRead();
    return super.eventDetails;
  }

  @override
  set eventDetails(List<EventBO> value) {
    _$eventDetailsAtom.reportWrite(value, super.eventDetails, () {
      super.eventDetails = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setCategory({required List<String> category}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setCategory');
    try {
      return super.setCategory(category: category);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEvents({required List<EventBO> eventDetails}) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setEvents');
    try {
      return super.setEvents(eventDetails: eventDetails);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
category: ${category},
eventDetails: ${eventDetails}
    ''';
  }
}

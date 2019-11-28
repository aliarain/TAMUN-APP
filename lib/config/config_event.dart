import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tamun/utils/tamun_config.dart';

import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {
  ConfigEvent([List props = const <dynamic>[]]) : super();
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

abstract class DarkModeEvent extends ConfigEvent {
  final bool darkOn;

  DarkModeEvent(this.darkOn);

  @override
  String toString() => 'DarkModeEvent';
  @override
  Future<ConfigState> applyAsync(
      {ConfigState currentState, ConfigBloc bloc}) async {
    try {
      bloc.darkModeOn = darkOn;
      Tamun.prefs.setBool(Tamun.darkModePref, darkOn);
      return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
  }
}

abstract class LoadConfigEvent extends ConfigEvent {
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState currentState, ConfigBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
  }
}
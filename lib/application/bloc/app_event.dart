abstract class AppEvent{
  const AppEvent();
}

class LoadCountriesEvent extends AppEvent{}

class SetCallingCodeEvent extends AppEvent{
  final String code;

  const SetCallingCodeEvent({required this.code});
}
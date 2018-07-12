// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'ru';

  static m0(task) => "Удалено \"${task}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "activeTodos" : MessageLookupByLibrary.simpleMessage("Неисполненное"),
    "addTodo" : MessageLookupByLibrary.simpleMessage("Добавить пункт"),
    "appTitle" : MessageLookupByLibrary.simpleMessage("Longbow Power"),
    "cancel" : MessageLookupByLibrary.simpleMessage("Отмена"),
    "clearCompleted" : MessageLookupByLibrary.simpleMessage("Удалить выполненные"),
    "completedTodos" : MessageLookupByLibrary.simpleMessage("Исполненное"),
    "delete" : MessageLookupByLibrary.simpleMessage("Удалить"),
    "deleteTodo" : MessageLookupByLibrary.simpleMessage("Удалить пункт"),
    "deleteTodoConfirmation" : MessageLookupByLibrary.simpleMessage("Удалить?"),
    "editTodo" : MessageLookupByLibrary.simpleMessage("Редактировать пункт"),
    "emptyTodoError" : MessageLookupByLibrary.simpleMessage("Введите что-нибудь"),
    "filterTodos" : MessageLookupByLibrary.simpleMessage("Фильтр"),
    "markAllComplete" : MessageLookupByLibrary.simpleMessage("Пометить все как выполненные"),
    "markAllIncomplete" : MessageLookupByLibrary.simpleMessage("Пометить все как невыполненные"),
    "newTodoHint" : MessageLookupByLibrary.simpleMessage("Что необходимо выполнить?"),
    "notesHint" : MessageLookupByLibrary.simpleMessage("Дополнительные замечания..."),
    "saveChanges" : MessageLookupByLibrary.simpleMessage("Сохранить изменения"),
    "showActive" : MessageLookupByLibrary.simpleMessage("Показать активные"),
    "showAll" : MessageLookupByLibrary.simpleMessage("Показать все"),
    "showCompleted" : MessageLookupByLibrary.simpleMessage("Показать завершенные"),
    "stats" : MessageLookupByLibrary.simpleMessage("Статистика"),
    "todoDeleted" : m0,
    "todoDetails" : MessageLookupByLibrary.simpleMessage("Детализация"),
    "todos" : MessageLookupByLibrary.simpleMessage("К исполнению"),
    "undo" : MessageLookupByLibrary.simpleMessage("Отступить на шаг")
  };
}

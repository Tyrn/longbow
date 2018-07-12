## Longbow
*A Bluetooth Power Supply Controller*

### Localization

- Generate `intl_messages.arb`:
```
$ flutter pub pub run intl_translation:extract_to_arb --output-dir=paraphernalia/ui_helpers/lib/src/localizations paraphernalia/ui_helpers/lib/src/localization.dart
```
- Copy `intl_messages.arb` to `intl_en.arb` and `intl_ru.arb`; edit the new files.

- Generate `messages_*.dart` files:
```
$ flutter pub pub run intl_translation:generate_from_arb --output-dir=paraphernalia/ui_helpers/lib/src/localizations --no-use-deferred-loading paraphernalia/ui_helpers/lib/src/localization.dart paraphernalia/ui_helpers/lib/src/localizations/intl_*.arb
```
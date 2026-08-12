# Anki Connect Dart Wrapper

## Usage

```dart
import 'anki_connect.dart';

void main() async {
  var anki = AnkiConnect();
  var decks = await anki.deckNames();
  print(decks);
}
```

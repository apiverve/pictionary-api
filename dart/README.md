# Pictionary Generator API - Dart/Flutter Client

Pictionary Generator creates random drawing prompts filtered by difficulty level for the classic Pictionary sketching game.

[![pub package](https://img.shields.io/pub/v/apiverve_pictionary.svg)](https://pub.dev/packages/apiverve_pictionary)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Pictionary Generator API](https://apiverve.com/marketplace/pictionary?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_pictionary: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_pictionary/apiverve_pictionary.dart';

void main() async {
  final client = PictionaryClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'difficulty': 'medium',
      'count': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "words": [
      "Including",
      "Widely",
      "Nation",
      "Buffalo",
      "Twelve"
    ],
    "count": 5,
    "difficulty": "medium"
  }
}
```

## API Reference

- **API Home:** [Pictionary Generator API](https://apiverve.com/marketplace/pictionary?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/pictionary](https://docs.apiverve.com/ref/pictionary?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

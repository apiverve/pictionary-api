# Pictionary Generator API - PHP Package

Pictionary Generator creates random drawing prompts filtered by difficulty level for the classic Pictionary sketching game.

## Installation

Install via Composer:

```bash
composer require apiverve/pictionary
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Pictionary\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'difficulty' => 'medium',
    'count' => 1
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Pictionary\Client;
use APIVerve\Pictionary\Exceptions\APIException;
use APIVerve\Pictionary\Exceptions\ValidationException;

try {
    $response = $client->execute(['difficulty' => 'medium', 'count' => 1]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pictionary?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pictionary?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pictionary?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

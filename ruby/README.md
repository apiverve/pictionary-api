# Pictionary Generator API - Ruby Gem

Pictionary Generator creates random drawing prompts filtered by difficulty level for the classic Pictionary sketching game.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_pictionary'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_pictionary
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_pictionary'

# Initialize the client
client = APIVerve::Pictionary::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  difficulty: "medium",
  count: 1
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ difficulty: "medium", count: 1 })
  puts response["data"]
rescue APIVerve::Pictionary::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Pictionary::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Pictionary::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pictionary?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pictionary?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pictionary?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

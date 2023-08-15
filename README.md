# DataPact

DataPact is a RubyGem created to try and fill some gaps in the Ruby on Rails developer experience.
**This gem is still in early development**

Here's what you can do with it so far:

- **Routes UI**: Navigate through your routes file with an intuitive UI, complete with search functionality and controller filters.
- **Session Key Management**: Easily set and delete session key-value pairs through a simple UI interface.
- **Theme Switcher**: Customize your experience with a built-in theme switcher.

## Usage

![check me out](/app/assets/images/data_pact/overview.gif)

## Installation


1. Add the gem to your application's Gemfile:
   ```ruby
   gem "data_pact"
   ```

2. Then execute:
   ```bash
   $ bundle
   ```

   Or install it manually with:
   ```bash
   $ gem install data_pact
   ```

3. Finally, mount the engine in your `config/routes.rb` file:
   ```ruby
   mount DataPact::Engine => "/data_pact"
   ```

## Contributing

We welcome contributions from developers of all skill levels. If you're interested in improving DataPact or adding new features, please follow the [contribution guidelines](LINK_TO_GUIDELINES).

## License

DataPact is available as open-source software under the [MIT License](https://opensource.org/licenses/MIT). Feel free to use it, modify it, and share it as you see fit.

---

I've tried to make the README more engaging and informative, emphasizing the usefulness of DataPact to Ruby on Rails developers. Feel free to modify it as you see fit, or let me know if you'd like any further changes!

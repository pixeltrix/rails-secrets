# Rails Secrets

This gem backports the `config/secrets.yml` from Rails 4.1 to Rails 4.0 applications.

## Installation

Add this line to your application's Gemfile:

    gem 'rails-secrets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-secrets

## Usage

Add this gem to your Gemfile, remove `config/initializers/secret_token.rb` and configure `config/secrets.yml` [as you would for Rails 4.1][1].

## Changelog

### 1.0.1

* Include instance methods before initialization begins so that it's available in all initializers

### 1.0.0

* Initial version.

## License (MIT)

Copyright (c) 2014 Andrew White <andyw@pixeltrix.co.uk>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[1]: http://edgeguides.rubyonrails.org/upgrading_ruby_on_rails.html#config-secrets-yml
```ruby
  class Article < ActiveRecord::Base
    acts_as_paranoid
  end

  Article.features.paranoid?                                   # => true
  Article.attribute_features[:deleted_at].paranoia_timestamp?  # => true
```

## Gemfile
```ruby
gem 'essay-paranoia', '~> 1.0'
```

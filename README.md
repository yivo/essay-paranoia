```ruby
  class Article < ActiveRecord::Base
    acts_as_paranoid
  end

  Article.features.paranoid?                                # => true
  Article.attribute_roles[:deleted_at].paranoia_timestamp?  # => true
```

## Gemfile
```ruby
gem 'essay-paranoia', github: 'yivo/essay-paranoia'
```
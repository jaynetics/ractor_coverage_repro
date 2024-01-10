fork of https://github.com/jaynetics/character_set to reproduce https://bugs.ruby-lang.org/issues/20158

```sh
bundle
bundle exec rake # => COVERAGE SUM: 4237
bundle exec rake # => COVERAGE SUM: 4241
bundle exec rake # => COVERAGE SUM: 4233

# comment out Ractor in spec/spec_helper.rb:1
head -n1 spec/spec_helper.rb # => Ractor.new { nil }
printf "#$(cat spec/spec_helper.rb)\n" > spec/spec_helper.rb

bundle exec rake # => COVERAGE SUM: 6852452
bundle exec rake # => COVERAGE SUM: 6852452
bundle exec rake # => COVERAGE SUM: 6852452
```

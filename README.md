[![Gem Version](https://badge.fury.io/rb/overwatch_league.svg)](https://badge.fury.io/rb/overwatch_league)
[![Build Status](https://travis-ci.org/jgayfer/overwatch_league.svg?branch=master)](https://travis-ci.org/jgayfer/overwatch_league)
[![Test Coverage](https://api.codeclimate.com/v1/badges/398b860d65874c9ea715/test_coverage)](https://codeclimate.com/github/jgayfer/overwatch_league/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/398b860d65874c9ea715/maintainability)](https://codeclimate.com/github/jgayfer/overwatch_league/maintainability)

# Overwatch League

A Ruby wrapper around the Overwatch League API

## Installation
    $ gem install overwatch_league

## Basic Example

```
require 'overwatch_league'

owl = OverwatchLeague.new
teams = owl.teams
```

## Usage

There is no official documentation for the API. However, [this Reddit post](https://www.reddit.com/r/Competitiveoverwatch/comments/7p0e8d/owl_api_analysis/) documents the API reasonably well.

The following methods are supported as part of the basic client.

> `teams`

> `team(team_id)`

> `ranking`

> `standings`

> `matches`

> `match(match_id)`

> `schedule`

> `streams`

> `vods`

> `maps`

> `news`

> `videos`

Rather than just returning a JSON `Hash`, each method returns an `OpenStruct` representation of the JSON where the keys have been converted to snake case. This is done for convenience, as it allows for `object.key.another_key` instead of `object['key']['another_key']` when parsing the response.

## Development & Contributions

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jgayfer/overwatch_league.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


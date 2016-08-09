# Rainbow Six: Siege Ruby API

## DEPRECATED:

We now use a private library for retrieving Rainbow Six stats for [R6Stats](https://r6stats.com). If you are interested in using our data, please contact me. You can find an email on my Github profile.

----------

This is a simple ruby gem to retrieve the json behind authenticated club ubi endpoints. This API is not publicly accessible, and access to it can be gained by sniffing network traffic and finding the correct headers.

## Installation

```bash
gem install r6api
```

## Usage

The *app_id* and *auth_token* can be found by viewing xhr requests after logging into [Club Ubi](https://club.ubi.com/). The app_id is listed as Ubi-AppId and the auth_token is listed as Authorization. Both should be copied into the fields provided in the R6API.

```ruby
api = R6API::API.new(app_id, auth_token)

profiles = api.get_profile(username)

stats = api.get_player(platform, profiles["profiles"][0]["profileId"])
```

## License

MIT

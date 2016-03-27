require "r6api/version"
require "httparty"

module R6API
	module UbisoftProfile
		def get_profile(username)
			self.class.get("https://api-ubiservices.ubi.com/v2/profiles?nameOnPlatform=#{username}&platformType=uplay", 
				auth_header).parsed_response
		end
	end

	module RainbowPlayer
		def get_player(platform, user_id)
			self.class.get("https://uplaywebcenter.ubi.com/v1/stats/playerStats/?game=RSIX7&locale=en-GB&platform=#{platform}&userId=" +
				"#{user_id}", auth_header).parsed_response
		end
	end

	class RainbowError < StandardError
	end

	class API
		include HTTParty
		include UbisoftProfile
		include RainbowPlayer

		attr_accessor :ubiid, :auth_token

		base_uri "https://api-ubiservices.ubi.com"

		def initialize(ubiid=nil, auth_token=nil)
			raise RainbowError, 'Missing Auth token or Ubi AppId' unless ubiid && auth_token
			@ubiid = ubiid
			@auth_token = auth_token
		end

		def auth_header
			{
				headers: {
					"Ubi-AppId" => ubiid,
					"Authorization" => auth_token
				}
			}

		end
	end
end

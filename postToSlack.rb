#!/usr/bin/ruby
require 'net/http'


def test()
	q='payload={"text": "This is posted to <#general> and comes from *monkey-bot*.", "channel": "#eclipse", "username": "monkey-bot", "icon_emoji": ":monkey_face:"}'
	uri = URI('https://hooks.slack.com/services/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')
	res = Net::HTTP.post_form(uri, 'q' => '', 'max' => '50')
	puts "Before"
	puts res.body
	puts "After"

end

module Eclipse
  module IOS
    test()
  end
end


# curl -X POST \
# --data-urlencode 'payload={"text": "This is posted to <#general> and comes from *monkey-bot*.", "channel": "#eclipse", "username": "monkey-bot", "icon_emoji": ":monkey_face:"}' \
# https://hooks.slack.com/services/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


Twitter.configure do |config|
    config.consumer_key = 'WlA3cr4SxjeU2IBYBejKKw'
    config.consumer_secret = 'kLwe91VDjLQ7VXtFqrS132ZoqCGTQ2zKDm0qaVWRaQ'
    config.oauth_token = '16560662-bPUbyK5JPIm1uiyd114f4AJ5ITEOCjgPBFaEJw18w'
    config.oauth_token_secret = 'UOOlru6GmPtYqsUHFq8awV4DrC9zAcm6oT6jh3ZQY'
end

require 'active_support'
require 'active_support/core_ext/string/multibyte.rb'
require 'active_support/core_ext/hash/keys.rb'

require "./lib/twitter-text/deprecation"
require "./lib/twitter-text/regex"
require "./lib/twitter-text/rewriter"
require "./lib/twitter-text/autolink"
require "./lib/twitter-text/extractor"
require "./lib/twitter-text/unicode"
require "./lib/twitter-text/validation"
require "./lib/twitter-text/hit_highlighter"
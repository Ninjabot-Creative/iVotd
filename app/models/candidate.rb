class Candidate < ActiveRecord::Base
  has_and_belongs_to_many :polls
  has_many :query_snapshots

  after_create :create_query_snapshot

  accepts_nested_attributes_for :query_snapshots

  def create_query_snapshot
    twitter = Twitter::REST::Client.new do |config|
      config.consumer_key = "zC8hN0Rbgxl0zSMYcT1Glzuhq"
      config.consumer_secret = "EuC8nNABma6l3fWYGK9pvmMaPsc03D3ZZaZN1SjqV2nH8A88eW"
      config.access_token = "263406641-wPmEk8fMe7BixKNenEIwL3lsbiHeeJdmix5wsyki"
      config.access_token_secret = "hjKHjFiUV0szyyB3RUa5KfNMYphx4FQHInTi4fWaMCPRF"
    end

  	candidate_tweets = twitter.search(self.title).first.to_h
    puts "*************************" + candidate_tweets.to_s
    candidate_count = candidate_tweets.length
  	query_snapshots.create(count: candidate_count)
  	true
  end
end

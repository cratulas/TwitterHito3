require 'json'
module Api
    module V1
        class TweetsController < V1Controller
            def news
                @tweets = Tweet.all
                array = []
                @tweets.each do |tweet|
                    array.push(tweet.attributes)
                end
                
                large = array.count

                if large > 50
                    how_much = large - 50
                    how_much.times do
                        array.shift
                    end
                    render json: array
                
                else
                    render json: array
                end


            end

        end
    end
end

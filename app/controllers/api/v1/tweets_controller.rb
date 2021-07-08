module Api
    module V1
        class TweetsController < V1Controller
            def news
                @tweets = Tweet.all
                array = []
                @tweets.each do |tweet|
                    array.push(tweet)
                end

                50.times do |i|
                    render json: array[i]

                end

                            
            end

        end
    end
end

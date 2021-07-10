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

            def by_date
                prueba = params[:date]
                array1 = prueba.split('-')
                prueba1 = params[:date1]
                array2 = prueba1.split('-')

                menor = Time.new(array1[0],array1[1],array1[2])
                mayor = Time.new(array2[0],array2[1],array2[2])
                @tweets = Tweet.mayores(menor).where('created_at < ?', mayor)

                render json: @tweets 
                
            end

        end
    end
end

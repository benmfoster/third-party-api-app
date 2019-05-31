class Api::WordsController < ApplicationController

    def show
        word = params[:word]
        @word = HTTP.headers({
            "X-User-Email" => ENV["API_Email"],
            "Authorization" => "Token token=#{ENV["API_KEY"]}"
            })
            .get("https://dictionaryapi.com/api/v3/references/spanish/json/#{word}?key=442fa38b-2902-42c4-a5ca-a103b8b214a9")
            .parse
        render 'show.json.jbuilder'
    end

end

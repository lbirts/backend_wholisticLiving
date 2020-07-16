class ApplicationController < ActionController::API
    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, "final042020")
    end

    def logged_in?
        headers = reques.headers["Authorization"]
        token = headers.split(" ")[1]
        begin
            user_id = JWT.decode(token, "final042020")[0]["user_id"]
            user = User.find(user_id)
        rescue
            user = nil  
        end
        render json: {error: "Please Login"} unless user
    end
end

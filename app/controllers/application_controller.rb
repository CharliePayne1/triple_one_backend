class ApplicationController < ActionController::API

    def secret
        ENV["SECRET"]
    end

    def generate_token(data)
        JWT.encode(data, secret)
    end

    def decode_token
        token = request.headers["Authorization"]
        data = JWT.decode(token, secret).first["id"]
    end
end

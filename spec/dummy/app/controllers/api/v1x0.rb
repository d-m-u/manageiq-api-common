module Api
  module V1x0
    class AuthenticationsController < ApplicationController
      def create
        render :json => "OK".to_json
      end
    end

    class RootController < ApplicationController
      def openapi
        render :json => {:things => "stuff"}.to_json
      end
    end

    class VmsController < ApplicationController
      def index
        render :json => {:things => "stuff"}.to_json
      end
    end
  end
end

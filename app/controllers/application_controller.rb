class ApplicationController < ActionController::Base
    def test        
      @service = Service.first
    end
end

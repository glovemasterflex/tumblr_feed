class ApplicationController < ActionController::Base
  before_action :consumer_key, :secret_key
  protect_from_forgery with: :exception

  private
    def consumer_key
      @consumer_key ||= ENV['CONSUMER_KEY']
    end

    def secret_key
      @secret_key ||= ENV['SECRET_KEY']
    end
end

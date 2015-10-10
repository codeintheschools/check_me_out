class WelcomeController < ApplicationController
  def index
    @things = Thing.all.order(:name)
    respond_with @things
  end
end

class WelcomeController < ApplicationController
  def index
    @things = Thing.all.order(:name)
  end
end

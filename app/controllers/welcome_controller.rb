class WelcomeController < ApplicationController
  def index
    @things = Thing.all.includes(:check_outs).order(:name)
    respond_with @things
  end
end

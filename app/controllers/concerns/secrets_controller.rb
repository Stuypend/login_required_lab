class SecretsController < ApplicationController

  before_action :login_required

  def show
    byebug
  end

  private

  def login_required
    byebug
    return head(:forbidden) unless session.include? :username
  end
end

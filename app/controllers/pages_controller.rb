class PagesController < ApplicationController
  layout 'application'
  before_action :apply_locale

  def index
    show
  end

  def show
    render page_name
  end

  protected

  def page_name
    params['page_name'] || 'index'
  end

  def apply_locale
    I18n.locale = params[:locale]
  end
end

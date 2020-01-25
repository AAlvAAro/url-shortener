class UrlsController < ApplicationController
  before_action :get_urls

  def index; end

  def show
    @url = Url.find_by(short: url_params[:short])
  end

  def create
    url = Url.find_or_create_by(original: url_params[:original]) do |url|
      url.short = 'abcde'
      url.title = 'Google'
    end

    @slug = url.short

    render :index, notice: 'Your shortened URL has been created'
  end

  private

  def url_params
    params.require(:url).permit(:original, :short)
  end

  def get_urls
    @urls = Url.last(100)
  end
end

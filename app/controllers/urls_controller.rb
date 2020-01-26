class UrlsController < ApplicationController
  def index
    @urls = Url.order(visits: :desc).limit(100)
  end

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
end

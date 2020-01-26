class UrlsController < ApplicationController
  def index
    @urls = Url.order(visits: :desc).limit(100)
    @slug = params[:slug]
  end

  def show
    url = Url.find_by(slug: params[:id])

    if url.present?
      url.increment!(:visits)

      redirect_to url.original
    else
      flash[:alert] = 'Sorry! The url you provided does not exist in our records'
      redirect_to root_path
    end
  end

  def create
    url = Url.find_or_create_by(original: url_params[:original]) do |url|
      url.slug = 'abcde'
    end

    UrlInspectorJob.perform_later(url.slug)

    flash[:notice] = 'Your shortened URL has been created'
    redirect_to urls_path(slug: url.slug)
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end
end

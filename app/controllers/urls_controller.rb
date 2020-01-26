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
    url = Url.find_or_create_by(original: url_params[:original])
    generate_slug(url) unless url.slug.present?

    UrlInspectorJob.perform_now(url.slug)

    flash[:notice] = 'Your shortened URL has been created'
    redirect_to root_path(slug: url.slug)
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end

  def generate_slug(url)
    slug = url.id.to_s(36)

    url.update(slug: slug)
  end
end

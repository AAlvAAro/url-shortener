require 'httparty'

class UrlInspectorJob < ApplicationJob
  queue_as :default

  def perform(slug)
    url = Url.find_by(slug: slug)
    response = HTTParty.get(url.original)
    html = Nokogiri::HTML::Document.parse(response.body)

    url.update(title: html.title)
  end
end

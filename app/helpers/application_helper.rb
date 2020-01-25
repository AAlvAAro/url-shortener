# frozen_string_literal: true

module ApplicationHelper
  def full_url(slug)
    "http://#{request.host}/#{slug}"
  end
end

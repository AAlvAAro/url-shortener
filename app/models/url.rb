class Url < ApplicationRecord
  validates_presence_of :original, :slug, :title
end

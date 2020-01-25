class Url < ApplicationRecord
  validates_presence_of :original, :short, :title
end

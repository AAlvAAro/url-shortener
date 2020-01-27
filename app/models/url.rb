class Url < ApplicationRecord
  validates_presence_of :original
  validates :original, format: { with: URI.regexp }, if: Proc.new { |a| a.original.present? }
end

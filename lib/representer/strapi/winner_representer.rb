require_relative 'base_representer'

module Strapi
  class WinnerRepresenter < BaseRepresenter
    property :win_number
    property :name
    property :prize_amount
    property :draw_date
    property :winning_numbers
    property :sold_in
    property :address
    property :province
  end
end

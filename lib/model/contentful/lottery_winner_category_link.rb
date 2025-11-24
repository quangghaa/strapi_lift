require_relative 'entry_link'

module Contentful
  class LotteryWinnerCategoryLink < EntryLink
    attr_accessor :id

    def representer_class
      Contentful::LotteryWinnerCategoryRepresenter
    end

    def target_class
      Contentful::LotteryWinnerCategory
    end
  end
end

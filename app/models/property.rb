class Property < ApplicationRecord

  include PgSearch::Model

  #allow search by address and zip code
  pg_search_scope :search_by_address,
  against: [:address, :zip],
  using: {
    #using postgres full text search, return any result matching word from the search term
    tsearch: {
      any_word: true,
      prefix: true
    }
  }

end

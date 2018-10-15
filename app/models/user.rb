class User < ApplicationRecord
    has_many :tweets
    has_many :group_users
    has_many :groups, through: :group_users 

    #model scope (placing this here in this model as we will run this query multiple times. It's custom query/search/method)
    def self.by_name_and_number (name:, number:)
        where(name: "#{name} #{number}")
    end

end

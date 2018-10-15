class Group < ApplicationRecord
    has_many :group_users
    has_many :users, through: :group_users


 #model scope (placing this here in this model as we will run this query multiple times. It's custom query/search/method)
 #we use self because its a class method
    def self.ruby_users
        find_by(name: 'Ruby').users
    end
    

end

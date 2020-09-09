class User < ApplicationRecord
    has_many :state_collections, dependent: :destroy
    has_many :us_states, through: :state_collections

    has_many :establishment_collections, dependent: :destroy
    has_many :establishments, through: :establishment_collections

    has_many :map_markers, dependent: :destroy
    has_many :markers, through: :map_markers, source: :establishment
    
    has_many :active_relationships, class_name: "UserRelationship", foreign_key: :follower_id, dependent: :destroy
    has_many :followed_users, through: :active_relationships, source: :followed_user
    has_many :passive_relationships, class_name: "UserRelationship", foreign_key: :followed_user_id, dependent: :destroy
    has_many :followers, through: :passive_relationships, source: :follower

    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :username, :email_address, uniqueness: true
    validates :username, :name, :birthdate, :location, :email_address, presence: true

    def age
        (Time.now.to_s(:number).to_i - self.birthdate.to_time.to_s(:number).to_i)/10e9.to_i
    end

    def friends_feed
        news_feed = [] 

        self.followed_users.collect do |user|
            user.establishment_collections.each do |ec|
                news_feed.push(ec)
            end
        end

        news_feed.sort { |a,b| b.created_at <=> a.created_at}
    end

    def total_states_rankings
        arr = []

        my_hash = {}
        my_hash['username'] = self.username
        my_hash['total_states'] = self.us_states.length
        my_hash['user_id'] = self.id
        my_hash['states_visited'] = self.us_states.collect{|state| state.name}
        arr.push(my_hash)

        self.followed_users.each do |user|
            hash = {}
            hash['username'] = user.username
            hash['total_states'] = user.us_states.length
            hash['user_id'] = user.id
            hash['states_visited'] = user.us_states.collect{|state| state.name}
            arr.push(hash)
        end

        arr.sort { |a,b| b['total_states'] <=> a['total_states']}
    end
end

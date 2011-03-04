class Treatment < ActiveRecord::Base
    has_many :subscriptions, :as => :subscribable 
    has_many :subscribers, 
    :through => :subscriptions, 
    :class_name => "User",
    :source => :user
end

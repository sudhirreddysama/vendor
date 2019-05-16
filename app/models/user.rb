class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :dob, type: Date
  field :password, type: String
  field :profile_picture, type: String

end

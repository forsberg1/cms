class Layout < ActiveRecord::Base
  belongs_to :user
  belongs_to :pages
end

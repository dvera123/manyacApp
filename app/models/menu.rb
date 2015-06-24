class Menu < ActiveRecord::Base
  has_many :sub_menus, -> { order('id DESC') },
  						:dependent => :destroy

  validates_presence_of :name

  #default_scope lambda { order('menus.name') }

  scope :home, lambda {where("menus.name = 'home'")}

  def menu_description
    "#{name} - #{description}"
  end

end

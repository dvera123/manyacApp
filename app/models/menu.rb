class Menu < ActiveRecord::Base
  has_many :sub_menus, -> { order('id DESC') },
  						:dependent => :destroy

  validates_presence_of :name

  #default_scope lambda { order('menus.name') }

  after_create :wait

  scope :home, lambda {where("menus.name = 'home'")}

  def menu_description
    "#{name} - #{description}"
  end

  def wait
  	puts "we will see you #{name}"
  end

end

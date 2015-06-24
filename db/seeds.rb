Menu.create :name => 'home', :description => 'menu item', :access_id => '777'
Menu.create :name => 'tools', :description => 'menu item', :access_id => '777'
Menu.create :name => 'profile', :description => 'menu item', :access_id => '777'

SubMenu.create [{:name => 'add'},{:name => 'inventory'}]

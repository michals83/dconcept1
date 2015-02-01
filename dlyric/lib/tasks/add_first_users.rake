namespace :add_first_users do
  desc "Add first users"
  task :user => :environment do
    alex = User.create(:email => 'test@test.com', :password => '', :name => 'Alex', :level => 10)
    alex.save
    rob = User.create(:email => "test2@test.com", :password => "", :name => "Rob", :level => 10)
    rob.save
    puts rob.errors.messages.inspect
  end

  desc "Add placeholder content"
  task :content => :environment do
    alex = User.first
    rob = User.second

    text = "Two roads diverged in a yellow wood,
And sorry I could not travel both 
And be one traveler, long I stood 
And looked down one as far as I could 
To where it bent in the undergrowth;"

    [alex, rob].each do |user|
      id = user.id
      verse = Verse.create(:user_id => id, :points => 50, :text => text)
      verse.save
    end
  end
end
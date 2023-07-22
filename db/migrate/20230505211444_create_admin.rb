class CreateAdmin < ActiveRecord::Migration[6.1]
  def up
    Admin.create_with(name: 'Andrei', first_name: 'Andrei', last_name: 'Andrei', password: '123456',
                      password_confirmation: '123456').find_or_create_by!(email: "andreabramovsky+admin1@gmail.com")
  end
end

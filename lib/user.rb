require './lib/database_connection'
require 'bcrypt'

class User
  attr_reader :id, :username, :name, :email, :password

  def initialize(id, username, name, email, password)
    @id = id
    @username = username
    @name = name
    @email = email
    @password = password
  end

  def self.all
    result = DatabaseConnection.query("SELECT * FROM users")
    result.map { |user| User.new(user['id'], user['username'], user['name'],
                  user['email'], user['password']) 
    }
  end

  def self.create(options)
    # encrypt the plantext password, options[:password]
    password = BCrypt::Password.create(options[:password])
    result = DatabaseConnection.query("INSERT INTO users 
        (username, name, email, password) 
      VALUES('#{options[:username]}','#{options[:name]}','#{options[:email]}',
        '#{password}') 
      RETURNING id, username, name, email, password;")
    User.new(result[0]['id'], result[0]['username'], result[0]['name'],
             result[0]['email'], result[0]['password'])
  end

  def self.find(id)
    return nil unless id
    result = DatabaseConnection.query("SELECT * FROM users WHERE id = '#{id}'")
    User.new(result[0]['id'], result[0]['username'], result[0]['name'],
             result[0]['email'], result[0]['password'])
  end

  def self.authenticate(email, _password)
    result = DatabaseConnection.query("SELECT * FROM users 
              WHERE email = '#{email}'")
    User.new(result[0]['id'], result[0]['username'], result[0]['name'],
              result[0]['email'], result[0]['password'])
  end

end

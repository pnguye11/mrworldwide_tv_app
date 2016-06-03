User.delete_all

# user = User.new
# user_password = "123"
# user_password_confirmation = '123'

pj = User.new(
  email: "pj@ga.co",
  password: "123",
  password_confirmation:"123",
)
pj.save

puts user.errors.full_messages

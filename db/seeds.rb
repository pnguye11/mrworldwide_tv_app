User.delete_all
Video.delete_all
Tag.delete_all

# user = User.new
# user.password = "1234"
# user.password_confirmation = "1234"

pj = User.new(
  email:                 "pj@ga.co",
  password:              "1234",
  password_confirmation: "1234",
)
pj.save

ez = User.new(
  email:                 "ez@ga.co",
  password:              "1234",
  password_confirmation: "1234",
  handle:                "ezrazilla",
  profile_url:           "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/6752/thumb_harsh_ez.jpg",
  statement:             "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defense, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America."
)
ez.save


timber = Video.create(
  title: "Timber",
  youtube_id: "hHUbLv4ThOo",
)

calle_ocho= Video.create(
  title: "I know you want me",
  youtube_id: "I4rVGtmfs5M",
)

dale = Tag.create word: "#dale"
kesha = Tag.create word: "#Ke$sha"

timber.tags << [dale, kesha]
calle_ocho.tags << dale

puts timber.tags
puts calle_ocho.tags
puts dale.videos
puts kesha.videos

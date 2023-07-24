# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
  { title: 'Animals' },
  { title: 'Plants' },
  { title: 'Sports' }
].each do |category|
  Category.find_or_create_by!(category)
end

users = [
   { name: 'Bob Marley', email: 'bob@mail.com', password: 'topsecret', password_confirmation: 'topsecret' },
   { name: 'Lady GaGa', email: 'gaga@mail.com', password: 'topsecret', password_confirmation: 'topsecret' },
   { name: 'Steven Seagal', email: 'steven@mail.com', password: 'topsecret', password_confirmation: 'topsecret' }
 ].each do |user|
   User.create(user)
 end

tests = [
  { title: 'Cats', level: 0, user: users[0], category: categories[0] },
  { title: 'Dogs', level: 1, user: users[1], category: categories[0] },
  { title: 'Flowers', level: 1, user: users[0], category: categories[1] },
  { title: 'Woods', level: 2, user: users[2], category: categories[1] },
  { title: 'Chess', level: 2, user: users[2], category: categories[2] },
  { title: 'Checkers', level: 3, user: users[2], category: categories[2] }
].each do |test|
  Test.find_or_create_by!(test)
end

questions = [
  { body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', test: tests[0] },
  { body: 'Aenean lacus purus, hendrerit at est nec, pulvinar feugiat enim?', test: tests[0] },
  { body: 'Donec vehicula pellentesque pharetra?', test: tests[1] },
  { body: 'Suspendisse tempus elit efficitur scelerisque accumsan?', test: tests[1] },
  { body: 'Integer semper massa in eros faucibus?', test: tests[2] },
  { body: 'Aliquam laoreet nisi non ante gravida rhoncus?', test: tests[2] },
  { body: 'Praesent ornare nulla vitae lectus dapibus, ac accumsan libero blandit?', test: tests[3] },
  { body: 'Donec cursus, urna et tincidunt tempus, nibh orci tempus dui, et porttitor felis felis ut ex?', test: tests[3] },
  { body: 'Ut posuere turpis dolor, sit amet vehicula ex facilisis nec?', test: tests[4] },
  { body: 'Suspendisse id risus sit amet magna porta tincidunt sed in dui?', test: tests[4] },
  { body: 'Vivamus volutpat lacus in metus lobortis vestibulum?', test: tests[5] },
  { body: 'Praesent eget euismod massa, sit amet volutpat eros?', test: tests[5] }
].each do |question|
  Question.find_or_create_by!(question)
end

answers = [
  { body: 'Yes', question: questions[0], correct: true },
  { body: 'No', question: questions[0], correct: false },
  { body: 'Maybe yes', question: questions[0], correct: false },
  { body: 'No', question: questions[1], correct: true },
  { body: 'Yes', question: questions[1], correct: false },
  { body: 'Maybe no', question: questions[1], correct: false },
  { body: 'Draco Malfoy', question: questions[2], correct: true },
  { body: 'Neville Longbottom', question: questions[2], correct: false },
  { body: 'Luna Lovegood', question: questions[2], correct: false },
  { body: 'Diagon Alley', question: questions[3], correct: true },
  { body: 'The Burrow', question: questions[3], correct: false },
  { body: 'Knockturn Alley', question: questions[3], correct: false },
  { body: 'Arthur Weasley', question: questions[4], correct: true },
  { body: 'Molly Weasley', question: questions[4], correct: false },
  { body: 'William Weasley', question: questions[4], correct: false },
  { body: 'Pulp Fiction', question: questions[5], correct: true },
  { body: 'Reservoir Dogs', question: questions[5], correct: false },
  { body: 'Jackie Brown', question: questions[5], correct: false },
  { body: 'Popy', question: questions[6], correct: true },
  { body: 'Tulip', question: questions[6], correct: false },
  { body: 'Daisy', question: questions[6], correct: false },
  { body: 'German Spitz', question: questions[7], correct: true },
  { body: 'Mountain Cur', question: questions[7], correct: false },
  { body: 'Rhodesian Ridgeback', question: questions[7], correct: false },
  { body: 'Verb', question: questions[8], correct: true },
  { body: 'Noun', question: questions[8], correct: false },
  { body: 'Adjective', question: questions[8], correct: false },
  { body: 'Good', question: questions[9], correct: true },
  { body: 'Bad', question: questions[9], correct: false },
  { body: 'Not good', question: questions[9], correct: false },
  { body: 'Hawaii', question: questions[10], correct: true },
  { body: 'Madagascar', question: questions[10], correct: false },
  { body: 'Panama', question: questions[10], correct: false },
  { body: 'Eleven', question: questions[11], correct: true },
  { body: 'Twelve', question: questions[11], correct: false },
  { body: 'Thirteen', question: questions[11], correct: false }
].each do |answer|
  Answer.find_or_create_by!(answer)
end

# userTests = UserTest.create!(
#   [
#     { test: tests[0], user: users[0] },
#     { test: tests[1], user: users[1] },
#     { test: tests[2], user: users[1] },
#     { test: tests[3], user: users[2] },
#     { test: tests[0], user: users[2] },
#     { test: tests[4], user: users[0] }
#   ]
# )

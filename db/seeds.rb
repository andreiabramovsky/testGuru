# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.create!(
  [
    {body: 'Yes', question_id: questions.[0].id, correct: true},
    {body: 'No', question_id: questions.[0].id, correct: false},
    {body: 'Maybe yes', question_id: questions.[0].id, correct: false},
    {body: 'No', question_id: questions.[1].id, correct: true},
    {body: 'Yes', question_id: questions.[1].id, correct: false},
    {body: 'Maybe no', question_id: questions.[1].id, correct: false},
    {body: 'Draco Malfoy', question_id: questions.[2].id, correct: true},
    {body: 'Neville Longbottom', question_id: questions.[2].id, correct: false},
    {body: 'Luna Lovegood', question_id: questions.[2].id, correct: false},
    {body: 'Diagon Alley', question_id: questions.[3].id, correct: true},
    {body: 'The Burrow', question_id: questions.[3].id, correct: false},
    {body: 'Knockturn Alley', question_id: questions.[3].id, correct: false},
    {body: 'Arthur Weasley', question_id: questions.[4].id, correct: true},
    {body: 'Molly Weasley', question_id: questions.[4].id, correct: false},
    {body: 'William Weasley', question_id: questions.[4].id, correct: false},
    {body: 'Pulp Fiction', question_id: questions.[5].id, correct: true},
    {body: 'Reservoir Dogs', question_id: questions.[5].id, correct: false},
    {body: 'Jackie Brown', question_id: questions.[5].id, correct: false},
    {body: 'Popy', question_id: questions.[6].id, correct: true},
    {body: 'Tulip', question_id: questions.[6].id, correct: false},
    {body: 'Daisy', question_id: questions.[6].id, correct: false},
    {body: 'German Spitz', question_id: questions.[7].id, correct: true},
    {body: 'Mountain Cur', question_id: questions.[7].id, correct: false},
    {body: 'Rhodesian Ridgeback', question_id: questions.[7].id, correct: false},
    {body: 'Verb', question_id: questions.[8].id, correct: true},
    {body: 'Noun', question_id: questions.[8].id, correct: false},
    {body: 'Adjective', question_id: questions.[8].id, correct: false},
    {body: 'Good', question_id: questions.[9].id, correct: true},
    {body: 'Bad', question_id: questions.[9].id, correct: false},
    {body: 'Not good', question_id: questions.[9].id, correct: false},
    {body: 'Hawaii', question_id: questions.[10].id, correct: true},
    {body: 'Madagascar', question_id: questions.[10].id, correct: false},
    {body: 'Panama', question_id: questions.[10].id, correct: false},
    {body: 'Eleven', question_id: questions.[11].id, correct: true},
    {body: 'Twelve', question_id: questions.[11].id, correct: false},
    {body: 'Thirteen', question_id: questions.[11].id, correct: false}
  ]
)

categories = Category.create!(
  [
    {title: 'Animals'},
    {title: 'Plants'},
    {title: 'Sports'}
  ]
)

questions = Question.create!(
  [
    {body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit?', test_id: tests[0].id},
    {body: 'Aenean lacus purus, hendrerit at est nec, pulvinar feugiat enim?', test_id: tests[0].id},
    {body: 'Donec vehicula pellentesque pharetra?', test_id: tests[1].id},
    {body: 'Suspendisse tempus elit efficitur scelerisque accumsan?', test_id: tests[1].id},
    {body: 'Integer semper massa in eros faucibus?', test_id: tests[2].id},
    {body: 'Aliquam laoreet nisi non ante gravida rhoncus?', test_id: tests[2].id},
    {body: 'Praesent ornare nulla vitae lectus dapibus, ac accumsan libero blandit?', test_id: tests[3].id},
    {body: 'Donec cursus, urna et tincidunt tempus, nibh orci tempus dui, et porttitor felis felis ut ex?', test_id: tests[3].id},
    {body: 'Ut posuere turpis dolor, sit amet vehicula ex facilisis nec?', test_id: tests[4].id},
    {body: 'Suspendisse id risus sit amet magna porta tincidunt sed in dui?', test_id: tests[4].id},
    {body: 'Vivamus volutpat lacus in metus lobortis vestibulum?', test_id: tests[5].id},
    {body: 'Praesent eget euismod massa, sit amet volutpat eros?', test_id: tests[5].id}
  ]
)

tests = Test.create!(
  [
    {title: 'Cats', level: 0, author_id: users[0].id, category_id: categories[0].id},
    {title: 'Dogs', level: 1, author_id: users[1].id, category_id: categories[0].id},
    {title: 'Flowers', level: 1, author_id: users[0].id, category_id: categories[1].id},
    {title: 'Woods', level: 2, author_id: users[2].id, category_id: categories[1].id},
    {title: 'Chess', level: 2, author_id: users[2].id, category_id: categories[2].id},
    {title: 'Checkers', level: 3, author_id: users[2].id, category_id: categories[2].id}
  ]
)

users = User.create!(
  [
    {name: 'Bob Marley'},
    {name: 'Lady GaGa'},
    {name: 'Steven Seagal'}
  ]
)

UserTest.create!(
  [
    { test_id: tests[0].id, user_id: users[0].id },
    { test_id: tests[1].id, user_id: users[1].id },
    { test_id: tests[2].id, user_id: users[1].id },
    { test_id: tests[3].id, user_id: users[2].id },
    { test_id: tests[0].id, user_id: users[2].id },
    { test_id: tests[4].id, user_id: users[0].id }
  ]
)

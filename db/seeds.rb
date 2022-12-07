# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

answers = Answer.create!(
  [
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: },
    {body: '', question_id: , correct: }
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
    {body: 'Ut posuere turpis dolor, sit amet vehicula ex facilisis nec?', test_id: tests[4].id},
    {body: 'Vivamus volutpat lacus in metus lobortis vestibulum?', test_id: tests[5].id}
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

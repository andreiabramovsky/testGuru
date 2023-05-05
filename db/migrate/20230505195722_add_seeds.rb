class AddSeeds < ActiveRecord::Migration[6.1]
  def up
    tests = [
      {
          author: 'andreiabramovsky@gmail.com',
          title: 'ololo',
          level: 1,
          category: 'Category 1',
          questions: [
              { 
                  body: 'ololo',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              },
              { 
                  body: 'ololo 2',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              },
              { 
                  body: 'ololo 3',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              }
          ]
      },
      {
          author: 'andreiabramovsky@gmail.com',
          title: 'ololo 2',
          level: 2,
          category: 'Category 2',
          questions: [
              { 
                  body: 'ololo',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              },
              { 
                  body: 'ololo 2',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              },
              { 
                  body: 'ololo 3',
                  answers: [
                      { body: 'ololo', correct: true },
                      { body: 'ololo 2', correct: false },
                      { body: 'ololo 3', correct: false },
                      { body: 'ololo 4', correct: false },
                  ]
              }
          ]
      },
    ]
  
    seed_tests(tests)
  
  end

  def seed_tests(tests)
    tests.each do |test_attrs|
        category = Category.find_or_create_by(title: test_attrs[:category])
        test = Test.create_with(category: category, level: test_attrs[:level])
                    .find_or_create_by(title: test_attrs[:title], author: User.find_by(email: test_attrs[:author]))
        
        test_attrs[:questions].each do |ques_attrs|
            question = test.questions.find_or_create_by(body: ques_attrs[:body])

            ques_attrs[:answers].each do |answer_attrs|
                answer = question.answers.create_with(correct: answer_attrs[:correct]).find_or_create_by(body: answer_attrs[:body])                
            end
        end
    end
  end

end


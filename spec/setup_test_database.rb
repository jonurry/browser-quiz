require 'pg'

def initialise_test_database
  empty_test_database
  populate_test_database
end

def empty_test_database
  conn = PG.connect(dbname: 'BrowserQuiz_test')
  conn.exec('TRUNCATE questions;')
end

def populate_test_database
  conn = PG.connect(dbname: 'BrowserQuiz_test')
  conn.exec("
    INSERT INTO questions(
      question, 
      answer_1, 
      answer_2, 
      answer_3, 
      correct_answer
    ) VALUES (
      'How many times has Eddy Merckx won le Tour de France?',
      'Three',
      'Four',
      'Five',
      3
    );
  ")
end

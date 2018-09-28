require 'pg'

def initialise_test_database
  db_connection = connect
  empty_test_database(db_connection)
  populate_test_database(db_connection)
end

def empty_test_database(db_connection)
  db_connection.exec('TRUNCATE questions cascade;')
  db_connection.exec('alter sequence questions_id_seq restart with 1')
  db_connection.exec('alter sequence answers_id_seq restart with 1')
end

def populate_test_database(db_connection)
  db_connection.exec("
    INSERT INTO questions(
      question, 
      correct_answer
    ) VALUES (
      'How many times has Eddy Merckx won le Tour de France?',
      3
    );
  ")
  db_connection.exec("
    INSERT INTO answers(
      question_id,
      number,
      answer
    ) VALUES (
      1,
      1,
      'Three'
    );
  ")
  db_connection.exec("
    INSERT INTO answers(
      question_id,
      number,
      answer
    ) VALUES (
      1,
      2,
      'Four'
    );
  ")
  db_connection.exec("
    INSERT INTO answers(
      question_id,
      number,
      answer
    ) VALUES (
      1,
      3,
      'Five'
    );
  ")
end

def connect
  PG.connect(dbname: 'BrowserQuiz_test')
end

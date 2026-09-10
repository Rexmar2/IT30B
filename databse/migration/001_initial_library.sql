-- # student table
CREATE TABLE IF NOT EXISTS students (
    --Primarykey for the students table
    student_id INT PRIMARY KEY AUTO_INCREMENT,


    -- Student name
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    -- Student course 
    student-course VARCHAR(50) NOT NULL,

    -- Student create at timestamp
    student_created_at TIMESTAMP NOT NULL
     DEFAULT=utf8mb4_general_ci;

     --#2 books table

     CREATE TABLE IF NOT EXISTS books (
        -- Primary key for the books table
        book_id INT PRIMARY KEY AUTO_INCREMENT,

        -- Book details
        book_title VARCHAR(100) NOT NULL,
        book_author VARCHAR(100) NOT NULL,
        book_category VARCHAR(50) NOT  NULL,

        -- Book created at timestamp
        book_created_at TIMESTAMP NOT NULL
         DEFAULT CURRENT_TIMESTAMP

     )ENGINE=InnoDB
     DEFAULT CHARSET=utf8mb4
     COLLATE=utf8mb4_general_ci,

     --#3 borrow table
     CREATE TABLE IF NOT EXISTS borrow (
        --Primary key for the borrow table 
        borrow_id INT AUTO_INCREMENT PRIMARY KEY
      

        --Foreign key references
        student_id  INT NOT NULL,
        book_id INT NOT NULL,
     
        -- Borrow timestamp not null bY default
        borrow_date TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

        --Borrow return timestamp null by default 
        borrow_return_date TIMESTAMP NULL
        DEFAULT NULL,

        --Borrow table constrains and foreign keys
        CONSTRAINT fk_borrow_book
          FOREIGN KEY (student_id)
         REFERENCES students(student_id) 
         ON UPDATE CASCADE
         ON DELETE RESTRICT

     )ENGINE=InnoDB 
     DEFAULT CHARSET=utf8mb4
     COLLATE=utf8mb4_general_ci;

     --Insert statement #1: Insert Students
     INSERT INTO students(
        student_first_name,
        student_last_name,
        student_course

     ) VALUES
     ('REXMAR','BOLINQUIT','BSIT'),
     ('ARCHIE','LEBRON','BEED'),
     ('TROY','LINCUNA','BSIT');
  
  -- Insert statement #2: Insert Book
    INSERT INTO books (
    book_title
    book_author
    book_category
 ) VALUES
    ('Kimetsu no Yaiba - Light Novel','Koyoharu Gotouge & Aya Yajima','Anime');
    ('Naruto: Kakashi Story','Masashi Kishimoto & Akira Higashiyama','Anime');
    ('Attack on Titan: Before the Fall','Hajime Isayama & Ryo Suzukaze','Anime');

        --Insert statement #3: Insert borrow
        student_idd,
        book_id
) VALUES
(1,2) ;
(2,1) ;

    
-- #1 students table  
-- Table #1 students table
CREATE TABLE IF NOT EXISTS students (
    -- Primary key for the students table
    student_id INT AUTO_INCREMENT PRIMARY KEY,

CREATE TABLE IF NOT EXIST studenst (
-- Primary key for the students table--
student_id INT PRIMARY KEY AUTO_INCREMENT,
    -- Student name
    student_first_name VARCHAR (50) NOT NULL,
    student_last_name VARCHAR (50) NOT NULL,

--student name 
student_first_name VARCHAR(50) NOT NULL,
student_last_name VARCHAR(50) NOT NULL,
    -- Student course
    student_course VARCHAR (50) NOT NULL,

-- student course --
student_course VARCHAR(50) NOT NULL,
    -- Student Ccreated at timestamp
    student_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP

--Student created at timestamp
student_created_at TIMESTAMP NOT NULL 
  DEFAULT CURRENT_TIMESTAMP
)   ENGINE=InnoDB
    DEFAULT CHARSET=utf8mb4
    COLLATE=utf8mb4_general_ci;

-- Table #2 books


) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;


-- #2 books table 
CREATE TABLE IF NOT EXIST books (
    --Primary key for the books table 
    book_id  INT PRIMARY KEY AUTO_INCREMENT,

CREATE TABLE IF NOT EXISTS books (
    -- Primary key for books table
    book_id INT AUTO_INCREMENT PRIMARY KEY,

    -- Book details

    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_title VARCHAR (50) NOT NULL,
    book_author VARCHAR (100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    --Book createda at timestamp

    -- Book created at timestamp
    book_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP 

) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;
        DEFAULT CURRENT_TIMESTAMP

)   ENGINE=InnoDB
    DEFAULT CHARSET=utf8mb4
    COLLATE=utf8mb4_general_ci;

--#3 borrow table

CREATE TABLE IF NOT EXIST borrow (
    --Primary key  for the borrow table

-- Table #3 borrow
CREATE TABLE IF NOT EXISTS borrow (
    -- Primary key for borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,

    --foreign key references
    -- Foreign key references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    --Borrow timestamp not null be default
    -- Borrow timestamp not null by default
    borrow_date TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    borrow_date TIMESTAMP NOT NULL 
    DEFAULT CURRENT_TIMESTAMP,
   
    -- Borrow return timestamp null by default 
    borrow_return_date TIMESTAMP NULL
        DEFAULT NULL,
    
    -- Borrow table constraints and foreign keys
    CONSTRAINT fk_borrow_student
        FOREIGN KEY (student_id)
        REFERENCES students (student_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

   --borrow_return timestamp null by default 
   borrow_return_date TIMESTAMP NULL
   DEFAULT NULL,
    CONSTRAINT fk_borrow_book
        FOREIGN KEY (book_id)
        REFERENCES books (book_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT

   --  borrow table constraint and foreign keys
   constraint fk_borrow_student
   FOREIGN KEY (student_id)
   REFERENCES stdents(student_id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT,

   CONSTRAINT fk_borrow_book
     FOREIGN KEY (book_id)
      REFERENCES books(books_id)
      ON UPDATE CASCADE
      ON UPDATE RESTRICT
        )   ENGINE=InnoDB
    DEFAULT CHARSET=utf8mb4
    COLLATE=utf8mb4_general_ci;

      ) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;


-- Insert statement #1 Insert Students
INSERT INTO students (
-- Insert Statement No.1: Students
INSERT INTO students(
    student_first_name,
    student_last_name,
    student_course 
)


     ) VALUES
     ('REXMAR','BOLINQUIT','BSIT'),
     ('ARCHIE','LEBRON','BEED'),
     ('TROY','LINCUNA','BSIT');
  
  -- Insert statement #2: Insert Book
    INSERT INTO books (
    book_title,
    book_author,
    book_category 
 ) VALUES
    ('Kimetsu no Yaiba - Light Novel','Koyoharu Gotouge & Aya Yajima','Anime'),
    ('Naruto: Kakashi Story','Masashi Kishimoto & Akira Higashiyama','Anime'),
    ('Attack on Titan: Before the Fall','Hajime Isayama & Ryo Suzukaze','Anime');

      
        
-- Insert Statement No.3: Borrow
INSERT INTO borrow (
    student_id,
    book_id
        
) VALUES
(1,2) ;
(2,1) ;

    
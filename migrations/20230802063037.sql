-- Modify "posts" table
ALTER TABLE posts 
ADD CONSTRAINT post_author FOREIGN KEY (user_id) 
REFERENCES users (id) 
ON UPDATE NO ACTION 
ON DELETE CASCADE;

CREATE INDEX post_author_index ON posts (user_id);
ALTER TABLE sony_album_comment
DROP COLUMN userId;
ALTER TABLE sony_album_comment
ADD username nvarchar(50) NOT NULL DEFAULT 'admin';
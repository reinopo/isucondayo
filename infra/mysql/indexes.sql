-- private_isu に追加したインデックス（適用順）

-- (2) 一覧表示の comments(post_id) 全行スキャン解消
ALTER TABLE comments ADD INDEX idx_post_id_created_at (post_id, created_at);

-- (5) /@user ページのフルスキャン解消
ALTER TABLE posts    ADD INDEX idx_user_id_created_at (user_id, created_at);
ALTER TABLE comments ADD INDEX idx_user_id (user_id);

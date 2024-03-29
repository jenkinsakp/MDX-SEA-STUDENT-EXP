
Warning: PHP Startup: Unable to load dynamic library 'oci8_12c' (tried: C:\xampp\php\ext\oci8_12c (The specified module could not be found), C:\xampp\php\ext\php_oci8_12c.dll (The specified module could not be found)) in Unknown on line 0

Warning: PHP Startup: Unable to load dynamic library 'oci8_19' (tried: C:\xampp\php\ext\oci8_19 (The specified module could not be found), C:\xampp\php\ext\php_oci8_19.dll (The specified module could not be found)) in Unknown on line 0

Warning: PHP Startup: Unable to load dynamic library 'pdo_firebird' (tried: C:\xampp\php\ext\pdo_firebird (The specified module could not be found), C:\xampp\php\ext\php_pdo_firebird.dll (The specified module could not be found)) in Unknown on line 0

Warning: PHP Startup: Unable to load dynamic library 'pdo_oci' (tried: C:\xampp\php\ext\pdo_oci (The specified module could not be found), C:\xampp\php\ext\php_pdo_oci.dll (The specified module could not be found)) in Unknown on line 0

Warning: Module "openssl" is already loaded in Unknown on line 0

Warning: Module "ftp" is already loaded in Unknown on line 0
CreatePasswordResetsTable: create table `password_resets` (`email` varchar(191) not null, `token` varchar(191) not null, `created_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci'
CreatePasswordResetsTable: alter table `password_resets` add index `password_resets_email_index`(`email`)
CreateChatterCategoriesTable: create table `chatter_categories` (`id` int unsigned not null auto_increment primary key, `parent_id` int unsigned null, `order` int not null default '1', `name` varchar(191) not null, `color` varchar(20) not null, `slug` varchar(191) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci'
CreateChatterDiscussionTable: create table `chatter_discussion` (`id` int unsigned not null auto_increment primary key, `chatter_category_id` int unsigned not null default '1', `title` varchar(191) not null, `user_id` int unsigned not null, `sticky` tinyint(1) not null default '0', `views` int unsigned not null default '0', `answered` tinyint(1) not null default '0', `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci'
CreateChatterPostTable: create table `chatter_post` (`id` int unsigned not null auto_increment primary key, `chatter_discussion_id` int unsigned not null, `user_id` int unsigned not null, `body` text not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci'
CreateForeignKeys: alter table `chatter_discussion` add constraint `chatter_discussion_chatter_category_id_foreign` foreign key (`chatter_category_id`) references `chatter_categories` (`id`) on delete cascade on update cascade
CreateForeignKeys: alter table `chatter_discussion` add constraint `chatter_discussion_user_id_foreign` foreign key (`user_id`) references `users` (`id`) on delete cascade on update cascade
CreateForeignKeys: alter table `chatter_post` add constraint `chatter_post_chatter_discussion_id_foreign` foreign key (`chatter_discussion_id`) references `chatter_discussion` (`id`) on delete cascade on update cascade
CreateForeignKeys: alter table `chatter_post` add constraint `chatter_post_user_id_foreign` foreign key (`user_id`) references `users` (`id`) on delete cascade on update cascade
AddSlugFieldForDiscussions: alter table `chatter_discussion` add `slug` varchar(191) not null
AddSlugFieldForDiscussions: alter table `chatter_discussion` add unique `chatter_discussion_slug_unique`(`slug`)
AddColorRowToChatterDiscussions: alter table `chatter_discussion` add `color` varchar(20) null default '#232629'
AddMarkdownAndLockToChatterPosts: alter table `chatter_post` add `markdown` tinyint(1) not null default '0', add `locked` tinyint(1) not null default '0'
CreateChatterUserDiscussionPivotTable: create table `chatter_user_discussion` (`user_id` int unsigned not null, `discussion_id` int unsigned not null) default character set utf8mb4 collate 'utf8mb4_unicode_ci'
CreateChatterUserDiscussionPivotTable: alter table `chatter_user_discussion` add constraint `chatter_user_discussion_user_id_foreign` foreign key (`user_id`) references `users` (`id`) on delete cascade
CreateChatterUserDiscussionPivotTable: alter table `chatter_user_discussion` add constraint `chatter_user_discussion_discussion_id_foreign` foreign key (`discussion_id`) references `chatter_discussion` (`id`) on delete cascade
CreateChatterUserDiscussionPivotTable: alter table `chatter_user_discussion` add primary key `chatter_user_discussion_user_id_discussion_id_primary`(`user_id`, `discussion_id`)
CreateChatterUserDiscussionPivotTable: alter table `chatter_user_discussion` add index `chatter_user_discussion_user_id_index`(`user_id`)
CreateChatterUserDiscussionPivotTable: alter table `chatter_user_discussion` add index `chatter_user_discussion_discussion_id_index`(`discussion_id`)

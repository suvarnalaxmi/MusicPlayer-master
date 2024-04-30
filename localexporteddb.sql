--
-- File generated with SQLiteStudio v3.4.4 on Tue Apr 30 07:39:25 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: account_emailaddress
CREATE TABLE IF NOT EXISTS "account_emailaddress" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "verified" bool NOT NULL, "primary" bool NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "email" varchar(254) NOT NULL UNIQUE);
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (2, 1, 1, 6, 'rajaprerak@gmail.com');
INSERT INTO account_emailaddress (id, verified, "primary", user_id, email) VALUES (3, 1, 1, 15, 'suvarnalaxmi25@gmail.com');

-- Table: account_emailconfirmation
CREATE TABLE IF NOT EXISTS "account_emailconfirmation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created" datetime NOT NULL, "sent" datetime NULL, "key" varchar(64) NOT NULL UNIQUE, "email_address_id" integer NOT NULL REFERENCES "account_emailaddress" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_site', 'Can add site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_site', 'Can change site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_site', 'Can delete site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_site', 'Can view site');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_emailaddress', 'Can add email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_emailaddress', 'Can change email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_emailaddress', 'Can delete email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_emailaddress', 'Can view email address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_emailconfirmation', 'Can add email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_emailconfirmation', 'Can change email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_emailconfirmation', 'Can delete email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_emailconfirmation', 'Can view email confirmation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_socialaccount', 'Can add social account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_socialaccount', 'Can change social account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_socialaccount', 'Can delete social account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_socialaccount', 'Can view social account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_socialapp', 'Can add social application');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_socialapp', 'Can change social application');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_socialapp', 'Can delete social application');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_socialapp', 'Can view social application');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_socialtoken', 'Can add social application token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_socialtoken', 'Can change social application token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_socialtoken', 'Can delete social application token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_socialtoken', 'Can view social application token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_song', 'Can add song');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_song', 'Can change song');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_song', 'Can delete song');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_song', 'Can view song');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_playlist', 'Can add playlist');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_playlist', 'Can change playlist');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_playlist', 'Can delete playlist');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_playlist', 'Can view playlist');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_favourite', 'Can add favourite');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_favourite', 'Can change favourite');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_favourite', 'Can delete favourite');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_favourite', 'Can view favourite');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 16, 'add_recent', 'Can add recent');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 16, 'change_recent', 'Can change recent');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 16, 'delete_recent', 'Can delete recent');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 16, 'view_recent', 'Can view recent');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (1, 'pbkdf2_sha256$180000$adezrMIbebro$Gk4nPtbTsxERv/OGAOUmvr9bwXNYspdHIr4S6VzmiWE=', '2020-07-13 07:00:22.955473', 1, 'admin', '', '', 1, 1, '2020-07-07 11:29:16.150740', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (6, '!qAewHyXLeyyh2ab4PhOOWyGQ5pLviXiBI23YLf4v', '2020-07-17 09:33:55.124200', 0, 'prerak', 'Prerak', 'rajaprerak@gmail.com', 0, 1, '2020-07-07 17:27:24.180053', 'Raja');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (9, 'pbkdf2_sha256$180000$gEd0ifpLl52w$0vAYMMCRaGl138R9/c0AuBTpOQy2GPxYG2XaArJ279k=', '2020-07-12 13:57:44.088979', 0, 'varad', '', '', 0, 1, '2020-07-11 04:52:17.064703', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (11, 'pbkdf2_sha256$180000$419oUDcov0Ag$6lklU1secvkviHqL01yDt08ovu0OPXNb8fYc3Ekc7rE=', '2020-07-12 16:04:23.336304', 0, 'test', '', '', 0, 1, '2020-07-12 16:04:16.724001', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (12, 'pbkdf2_sha256$180000$kf5XlJiv8pcX$Idk9ukwdJbmvajYTQF8YOV15I585r9zqcOqr3ZE0sc4=', '2020-07-13 06:51:32.151913', 0, 'test1', '', '', 0, 1, '2020-07-13 06:49:42.633700', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (13, 'pbkdf2_sha256$180000$7Ri2wRBG6Sxa$rL9bA3nVKXIZRjJA6VTC/kKeyL6sPEmCJ3jb6BnmheE=', '2024-04-24 19:45:07.727596', 0, 'suvvu', '', '', 0, 1, '2024-04-24 19:44:57.677380', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (14, 'pbkdf2_sha256$180000$rDROneB85Qc3$7daeV4pKcstEIY4EaJib+yzhfMf6wDPiaIG2eFUsB7k=', '2024-04-29 19:28:42.311779', 0, 'anky', '', '', 0, 1, '2024-04-29 19:28:26.635887', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) VALUES (15, '!BdNk0FJlQwCKLAYUCLvNlvBBLXXcfOpOqc4pGf6p', '2024-04-29 19:29:52.666426', 0, 'suvarnalaxmi', 'Suvarnalaxmi', 'suvarnalaxmi25@gmail.com', 0, 1, '2024-04-29 19:29:52.596531', 'Lambture');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (1, '2020-07-07 11:52:00.173799', '1', '127.0.0.1', '[{"changed": {"fields": ["Domain name"]}}]', 7, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (2, '2020-07-07 12:07:30.085137', '1', 'Google', '[{"added": {}}]', 11, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (3, '2020-07-08 12:28:34.603847', '1', 'Kabira', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (4, '2020-07-08 12:29:50.564819', '1', 'Kabira', '[{"changed": {"fields": ["Song img", "Song file"]}}]', 13, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (5, '2020-07-08 12:33:33.500314', '2', 'Baarish', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (6, '2020-07-08 12:46:41.397903', '3', 'Soch Na Sake', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (7, '2020-07-08 12:49:20.316790', '4', 'Gulaabo', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (8, '2020-07-09 14:45:43.612737', '1', 'Playlist object (1)', '[{"added": {}}]', 14, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (9, '2020-07-09 14:45:59.425437', '2', 'Playlist object (2)', '[{"added": {}}]', 14, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (10, '2020-07-09 16:20:36.469706', '1', 'Playlist object (1)', '[]', 14, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (11, '2020-07-09 16:21:01.315849', '3', 'Playlist object (3)', '[{"added": {}}]', 14, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (12, '2020-07-09 18:31:43.335011', '6', 'Playlist object (6)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (13, '2020-07-09 18:31:43.553302', '5', 'Playlist object (5)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (14, '2020-07-09 18:31:43.682226', '4', 'Playlist object (4)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (15, '2020-07-09 18:32:42.641893', '7', 'Playlist object (7)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (16, '2020-07-09 18:34:01.860155', '8', 'Playlist object (8)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (17, '2020-07-09 18:35:12.702707', '9', 'Playlist object (9)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (18, '2020-07-09 18:36:47.672274', '11', 'Playlist object (11)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (19, '2020-07-09 18:36:47.836994', '10', 'Playlist object (10)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (20, '2020-07-09 18:37:04.014881', '12', 'Playlist object (12)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (21, '2020-07-09 18:37:27.216540', '13', 'Playlist object (13)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (22, '2020-07-09 18:38:02.113773', '14', 'Playlist object (14)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (23, '2020-07-09 18:42:29.455851', '18', 'Playlist object (18)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (24, '2020-07-09 18:42:29.643743', '17', 'Playlist object (17)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (25, '2020-07-09 18:42:29.820644', '16', 'Playlist object (16)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (26, '2020-07-09 18:42:29.946571', '15', 'Playlist object (15)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (27, '2020-07-09 18:47:46.686091', '19', 'Playlist object (19)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (28, '2020-07-10 05:37:49.482413', '39', 'Playlist object (39)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (29, '2020-07-10 05:37:49.797490', '38', 'Playlist object (38)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (30, '2020-07-10 05:37:50.116590', '37', 'Playlist object (37)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (31, '2020-07-10 05:37:50.313480', '36', 'Playlist object (36)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (32, '2020-07-10 05:37:50.491414', '35', 'Playlist object (35)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (33, '2020-07-10 05:37:50.670570', '34', 'Playlist object (34)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (34, '2020-07-10 05:37:50.849353', '33', 'Playlist object (33)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (35, '2020-07-10 05:37:51.081072', '32', 'Playlist object (32)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (36, '2020-07-10 05:37:51.264842', '31', 'Playlist object (31)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (37, '2020-07-10 05:37:51.513851', '30', 'Playlist object (30)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (38, '2020-07-10 05:37:51.727108', '29', 'Playlist object (29)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (39, '2020-07-10 05:37:51.880468', '28', 'Playlist object (28)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (40, '2020-07-10 05:37:52.100011', '27', 'Playlist object (27)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (41, '2020-07-10 06:03:07.085145', '44', 'Playlist object (44)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (42, '2020-07-10 06:03:07.236907', '43', 'Playlist object (43)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (43, '2020-07-10 06:03:07.378822', '42', 'Playlist object (42)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (44, '2020-07-10 06:03:07.560058', '41', 'Playlist object (41)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (45, '2020-07-10 06:04:40.563023', '46', 'Playlist object (46)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (46, '2020-07-10 06:04:40.890229', '45', 'Playlist object (45)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (47, '2020-07-10 06:26:34.111393', '57', 'Playlist object (57)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (48, '2020-07-10 06:26:34.239715', '56', 'Playlist object (56)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (49, '2020-07-10 06:26:34.360533', '55', 'Playlist object (55)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (50, '2020-07-10 06:26:34.528223', '54', 'Playlist object (54)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (51, '2020-07-10 06:26:34.806449', '53', 'Playlist object (53)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (52, '2020-07-10 06:26:34.951463', '52', 'Playlist object (52)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (53, '2020-07-10 06:26:35.054179', '51', 'Playlist object (51)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (54, '2020-07-10 06:26:35.170175', '50', 'Playlist object (50)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (55, '2020-07-10 06:26:35.269801', '49', 'Playlist object (49)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (56, '2020-07-10 06:26:35.370018', '48', 'Playlist object (48)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (57, '2020-07-10 06:26:35.481286', '47', 'Playlist object (47)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (58, '2020-07-10 06:35:21.170488', '59', 'Playlist object (59)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (59, '2020-07-10 06:35:21.326837', '58', 'Playlist object (58)', '', 14, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (60, '2020-07-10 06:40:46.165610', '7', 'test', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (61, '2020-07-11 04:51:46.974870', '5', 'keyur', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (62, '2020-07-11 04:51:47.107986', '4', 'raja', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (63, '2020-07-11 04:51:47.212987', '2', 'varad', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (64, '2020-07-11 04:51:47.352534', '3', 'varad3', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (65, '2020-07-11 04:51:47.489631', '8', 'vb', '', 4, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (66, '2020-07-11 06:02:06.202969', '10', 'Recent object (10)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (67, '2020-07-11 06:02:06.386948', '9', 'Recent object (9)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (68, '2020-07-11 06:02:06.474990', '8', 'Recent object (8)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (69, '2020-07-11 06:02:06.618939', '7', 'Recent object (7)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (70, '2020-07-11 06:02:06.722970', '6', 'Recent object (6)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (71, '2020-07-11 06:02:06.980606', '5', 'Recent object (5)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (72, '2020-07-11 06:02:07.067674', '4', 'Recent object (4)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (73, '2020-07-11 06:02:07.213889', '3', 'Recent object (3)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (74, '2020-07-11 06:02:07.373876', '2', 'Recent object (2)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (75, '2020-07-11 06:02:07.510266', '1', 'Recent object (1)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (76, '2020-07-11 06:20:44.625009', '11', 'Recent object (11)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (77, '2020-07-11 06:28:34.731445', '14', 'Recent object (14)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (78, '2020-07-11 06:28:34.863222', '13', 'Recent object (13)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (79, '2020-07-11 06:28:34.983598', '12', 'Recent object (12)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (80, '2020-07-11 06:45:59.591646', '20', 'Recent object (20)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (81, '2020-07-11 06:45:59.715578', '19', 'Recent object (19)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (82, '2020-07-11 06:45:59.816516', '18', 'Recent object (18)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (83, '2020-07-11 06:45:59.937992', '17', 'Recent object (17)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (84, '2020-07-11 06:46:00.058986', '16', 'Recent object (16)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (85, '2020-07-11 06:46:00.261295', '15', 'Recent object (15)', '', 16, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (86, '2020-07-11 13:10:53.300005', '4', 'Gulaabo', '[{"changed": {"fields": ["Song img"]}}]', 13, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (87, '2020-07-12 07:38:37.583838', '5', 'Ban Ja Tu Meri Rani', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (88, '2020-07-12 07:39:36.387563', '6', 'Aaj Se Teri', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (89, '2020-07-12 07:40:49.476468', '7', 'Bekhayali', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (90, '2020-07-12 07:41:31.724141', '8', 'Tujhe Kitna Chahne Lage Hum', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (91, '2020-07-12 07:50:51.219655', '1', 'Asal Mein', '[{"changed": {"fields": ["Name", "Album", "Song img", "Year", "Singer", "Song file"]}}]', 13, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (92, '2020-07-12 08:00:54.187829', '9', 'Haaye Oye', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (93, '2020-07-12 08:01:53.280114', '10', 'Sun Saathiya', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (94, '2020-07-12 08:40:12.560302', '11', 'Tie Me Down', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (95, '2020-07-12 08:41:51.878813', '12', 'A Sky Full of Stars', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (96, '2020-07-12 08:42:50.685670', '13', 'The Ocean', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (97, '2020-07-12 08:43:59.806946', '14', 'Let Me Love You', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (98, '2020-07-12 08:45:38.013237', '15', 'I Like Me Better', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (99, '2020-07-12 08:46:34.844185', '16', 'Attention', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (100, '2020-07-12 08:47:33.408808', '17', 'Girls Like You', '[{"added": {}}]', 13, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (101, '2020-07-12 16:03:50.271079', '10', 'test', '', 4, 1, 3);

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'sites', 'site');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'account', 'emailaddress');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'account', 'emailconfirmation');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'socialaccount', 'socialaccount');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'socialaccount', 'socialapp');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'socialaccount', 'socialtoken');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'musicapp', 'song');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'musicapp', 'playlist');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'musicapp', 'favourite');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'musicapp', 'recent');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-07-07 11:28:52.336873');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-07-07 11:28:52.506302');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'account', '0001_initial', '2020-07-07 11:28:52.653428');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'account', '0002_email_max_length', '2020-07-07 11:28:52.769122');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0001_initial', '2020-07-07 11:28:52.942213');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2020-07-07 11:28:53.085429');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-07 11:28:53.355015');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'contenttypes', '0002_remove_content_type_name', '2020-07-07 11:28:53.524417');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0002_alter_permission_name_max_length', '2020-07-07 11:28:53.640344');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0003_alter_user_email_max_length', '2020-07-07 11:28:53.787465');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0004_alter_user_username_opts', '2020-07-07 11:28:53.946576');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0005_alter_user_last_login_null', '2020-07-07 11:28:54.056593');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0006_require_contenttypes_0002', '2020-07-07 11:28:54.152523');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0007_alter_validators_add_error_messages', '2020-07-07 11:28:54.330389');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0008_alter_user_username_max_length', '2020-07-07 11:28:54.479857');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0009_alter_user_last_name_max_length', '2020-07-07 11:28:54.618844');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0010_alter_group_name_max_length', '2020-07-07 11:28:54.765798');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'auth', '0011_update_proxy_permissions', '2020-07-07 11:28:54.912143');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2020-07-07 11:28:55.035052');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'sites', '0001_initial', '2020-07-07 11:28:55.135231');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'sites', '0002_alter_domain_unique', '2020-07-07 11:28:55.339151');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'socialaccount', '0001_initial', '2020-07-07 11:28:55.524205');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'socialaccount', '0002_token_max_lengths', '2020-07-07 11:28:55.719387');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'socialaccount', '0003_extra_data_default_dict', '2020-07-07 11:28:55.937631');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'musicapp', '0001_initial', '2020-07-08 12:26:59.986315');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'musicapp', '0002_playlist', '2020-07-09 14:44:25.538734');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'musicapp', '0003_favourite', '2020-07-11 04:36:56.260360');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'musicapp', '0004_recent', '2020-07-11 05:10:21.788732');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'musicapp', '0005_auto_20200712_1306', '2020-07-12 07:36:37.452875');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('xzcmw5bfivapz519uko4y61wfn49ufa5', 'MzFmY2ZmMmU3MWMyM2ZlYzZlMDgyMWFkZDQ0NjkyOGU3NzM5MzRiYTp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwiVGRjSWV2dHJWT2pUIl19', '2020-07-21 12:09:17.334719');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('f00xqiguw8bhdiic2twobtzaj6owbeor', 'OGY2OWY4NjMxM2VjZDUyZTU3YmViYjI4ZWMzZjA1OTI2MjI1MGI2OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTFjZGM2N2U3MzdiMGU5NzgwNDhmZWIxOTEyMDczOTU2ZDk3MWYwMCJ9', '2020-07-21 17:38:27.679975');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('08g65ont27lsfmc8th56ine9p9ft5hga', 'ZGVmMzg0NTRhZTgyMmI3MDg4MTNkZmU1ZGYyMmFjOTdmN2YwMzk5Zjp7fQ==', '2020-07-24 04:59:20.642836');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2rf51d21ebqmgryizeerxvgtlhensj99', 'ZGVmMzg0NTRhZTgyMmI3MDg4MTNkZmU1ZGYyMmFjOTdmN2YwMzk5Zjp7fQ==', '2020-07-24 06:39:19.329783');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('8e3yi59dmdu74rm52yembq3urh3sb164', 'YmI2N2NhOGM0YTZhNGNmNTZjZDg4MzVkOWI2Y2M2Mjk3ZDdlYWU2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZGI3OWEyYzFlNDMxZDZmNWVmYWNjYzhmNmI4NDQ1MTRjN2QzNGIxIn0=', '2020-07-24 06:40:33.041371');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('i2kjfqcuyo2l0r0wb68dvfqxl7082rxa', 'OWVlN2IxZjZkMzQwMTIzNTBiMzQ3YWEyYmQzZGFmNGVlYmEwNWIwNDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjYxNDM1OGZhZmVhZjZmM2Q0MGI2OWY2YzNmMTE0ZjdjM2QzMDQ0In0=', '2020-07-25 04:52:23.018573');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zut4utxair383d60mzja4pgw1we62hh5', 'OWVlN2IxZjZkMzQwMTIzNTBiMzQ3YWEyYmQzZGFmNGVlYmEwNWIwNDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMjYxNDM1OGZhZmVhZjZmM2Q0MGI2OWY2YzNmMTE0ZjdjM2QzMDQ0In0=', '2020-07-26 13:57:44.239444');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('lvwtsm0bj6w5bqwesu13crx6cs1hbvue', 'OGY2OWY4NjMxM2VjZDUyZTU3YmViYjI4ZWMzZjA1OTI2MjI1MGI2OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTFjZGM2N2U3MzdiMGU5NzgwNDhmZWIxOTEyMDczOTU2ZDk3MWYwMCJ9', '2020-07-27 06:53:01.462692');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sbzxiohpqr1nc1cgy1238my9eoq7mv7k', 'ZGVlNGE0N2Y1NTVkN2VkYmRlYjczM2E1YmEzMDgzYzk1NDY2YzA4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDZkZmMxMjc3ZDk2YWJkZGFmMWM2YjY2ZWQ3NWI5Njc0NWI1ZDE1In0=', '2020-07-27 07:00:23.118654');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('3256itnany2ww3r80zun7ztcfysi2dpy', 'OGY2OWY4NjMxM2VjZDUyZTU3YmViYjI4ZWMzZjA1OTI2MjI1MGI2OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTFjZGM2N2U3MzdiMGU5NzgwNDhmZWIxOTEyMDczOTU2ZDk3MWYwMCJ9', '2020-07-28 16:58:44.839837');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('hv24gvnw55h30dnwe5p0y4h2lfzoyxz3', 'OGY2OWY4NjMxM2VjZDUyZTU3YmViYjI4ZWMzZjA1OTI2MjI1MGI2OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTFjZGM2N2U3MzdiMGU5NzgwNDhmZWIxOTEyMDczOTU2ZDk3MWYwMCJ9', '2020-07-31 09:33:55.285557');

-- Table: django_site
CREATE TABLE IF NOT EXISTS "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "domain" varchar(100) NOT NULL UNIQUE);
INSERT INTO django_site (id, name, domain) VALUES (1, 'example.com', '127.0.0.1');

-- Table: musicapp_favourite
CREATE TABLE IF NOT EXISTS "musicapp_favourite" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "is_fav" bool NOT NULL, "song_id" integer NOT NULL REFERENCES "musicapp_song" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO musicapp_favourite (id, is_fav, song_id, user_id) VALUES (4, 1, 4, 6);
INSERT INTO musicapp_favourite (id, is_fav, song_id, user_id) VALUES (7, 1, 10, 6);
INSERT INTO musicapp_favourite (id, is_fav, song_id, user_id) VALUES (8, 1, 7, 11);
INSERT INTO musicapp_favourite (id, is_fav, song_id, user_id) VALUES (9, 1, 9, 6);
INSERT INTO musicapp_favourite (id, is_fav, song_id, user_id) VALUES (11, 1, 3, 6);

-- Table: musicapp_playlist
CREATE TABLE IF NOT EXISTS "musicapp_playlist" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "playlist_name" varchar(200) NOT NULL, "song_id" integer NOT NULL REFERENCES "musicapp_song" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (1, 'Awesome', 2, 1);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (2, 'Awesome', 3, 1);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (3, 'Cool', 1, 1);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (60, 'Yo', 4, 1);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (62, 'Awesome', 6, 6);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (63, 'yo', 9, 6);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (64, 'Awesome', 12, 6);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (65, 'Awesome', 12, 6);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (66, 'yo', 12, 6);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (67, 'Awesome', 9, 11);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (68, 'Yo', 11, 11);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (69, 'Awesome', 16, 11);
INSERT INTO musicapp_playlist (id, playlist_name, song_id, user_id) VALUES (70, 'Yo', 8, 11);

-- Table: musicapp_recent
CREATE TABLE IF NOT EXISTS "musicapp_recent" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "song_id" integer NOT NULL REFERENCES "musicapp_song" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (32, 4, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (56, 17, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (57, 8, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (58, 13, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (59, 6, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (70, 10, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (71, 3, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (73, 1, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (74, 2, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (75, 16, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (76, 15, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (80, 14, 9);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (171, 12, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (177, 11, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (179, 16, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (185, 8, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (189, 13, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (197, 16, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (200, 15, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (202, 7, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (208, 4, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (209, 3, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (210, 17, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (211, 10, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (212, 5, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (213, 9, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (215, 6, 11);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (216, 7, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (223, 10, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (232, 5, 1);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (240, 8, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (242, 17, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (352, 1, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (386, 14, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (393, 6, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (397, 11, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (398, 2, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (399, 9, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (400, 4, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (402, 13, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (407, 5, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (408, 3, 6);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (409, 3, 13);
INSERT INTO musicapp_recent (id, song_id, user_id) VALUES (410, 14, 13);

-- Table: musicapp_song
CREATE TABLE IF NOT EXISTS "musicapp_song" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL, "album" varchar(200) NOT NULL, "song_img" varchar(100) NOT NULL, "year" integer NOT NULL, "singer" varchar(200) NOT NULL, "song_file" varchar(100) NOT NULL, "language" varchar(20) NOT NULL);
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (1, 'Asal Mein', 'Asal Mein', 'asalmein.jpg', 2020, 'Darshan Raval', 'Asal_Mein_-_Darshan_Raval_128_Kbps.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (2, 'Baarish', 'Half Girlfriend', 'Baarish.jpeg', 2017, 'Ash King, Shashaa Tirupati', '01_-_Baarish_-_Half_Girlfriend_DJMaza.Life.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (3, 'Soch Na Sake', 'Airlift', 'sochnasake.jpeg', 2015, 'Arijit Singh, Tulsi Kumar', '01_-_Soch_Na_Sake_Duet-MyMp3Singer.com.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (4, 'Gulaabo', 'Shaandar', 'gulaabo.jpg', 2018, 'Vishal Dadlani', '01_-_Gulaabo-MyMp3Singer.net.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (5, 'Ban Ja Tu Meri Rani', 'Tumhari Sullu', 'banjarani.jpg', 2017, 'Guru Randhawa', 'Guru_Randhawa_-_Ban_Ja_Tu_Meri_Rani.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (6, 'Aaj Se Teri', 'Padman', 'aajseteri.jpg', 2018, 'Arijit Singh', 'Aaj_Se_Teri_Padman_128_Kbps.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (7, 'Bekhayali', 'Kabir Singh', 'bekhayali.jpg', 2019, 'Sachet Tandon', 'Bekhayali_-_Kabir_Singh_128_Kbps.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (8, 'Tujhe Kitna Chahne Lage Hum', 'Kabir Singh', 'tujhekitnachahnelagehum.jpg', 2019, 'Arijit Singh', 'Tujhe_Kitna_Chahne_Lage_-_Kabir_Singh_128_Kbps.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (9, 'Haaye Oye', 'Haaye Oye', 'haayeoye.jpg', 2019, 'Ash King', 'Haaye_Oye_-_amlijatt.in.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (10, 'Sun Saathiya', 'ABCD 2', 'sunsaathiya.jpg', 2015, 'Divya Kumar, Priya Saraiya', 'Sun_Saathiya.mp3', 'Hindi');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (11, 'Tie Me Down', 'Gravity', 'tiemedown.jpg', 2018, 'Gryffin, Elle Duhe', 'Gryffin_-_Tie_Me_Down_ft._Elley_Duhé.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (12, 'A Sky Full of Stars', 'A Sky Full of Stars', 'skyfullofstars.jpg', 2014, 'Coldplay', 'Coldplay_-_A_Sky_Full_Of_Stars.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (13, 'The Ocean', 'The Ocean', 'ocean.jpg', 2016, 'Mike Perry, Shy Martin', 'Mike_Perry_-_The_Ocean_ft._Shy_Martin_CC.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (14, 'Let Me Love You', 'Encore', 'letmeloveyou.jpg', 2016, 'Justin Bieber, DJ Snake', 'DJ_Snake_-_Let_Me_Love_You_ft._Justin_Bieber_Official_Video.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (15, 'I Like Me Better', 'I Met You When I Was 18', 'ilikemebetter.jpg', 2017, 'Lauv', 'Lauv_-_I_Like_Me_Better.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (16, 'Attention', 'Thing For You', 'attention.png', 2017, 'Charlie Puth', 'Attention_-_Charlie_Puth.mp3', 'English');
INSERT INTO musicapp_song (id, name, album, song_img, year, singer, song_file, language) VALUES (17, 'Girls Like You', 'Red Pill Blues', 'girlslikeyou.jpg', 2018, 'Maroon 5, Cardi B', 'Maroon_5_-_Girls_Like_You_ft._Cardi_B.mp3', 'English');

-- Table: socialaccount_socialaccount
CREATE TABLE IF NOT EXISTS "socialaccount_socialaccount" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "provider" varchar(30) NOT NULL, "uid" varchar(191) NOT NULL, "last_login" datetime NOT NULL, "date_joined" datetime NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "extra_data" text NOT NULL);
INSERT INTO socialaccount_socialaccount (id, provider, uid, last_login, date_joined, user_id, extra_data) VALUES (2, 'google', '112029467156548342356', '2020-07-17 09:33:54.090277', '2020-07-07 17:27:24.442955', 6, '{"id": "112029467156548342356", "email": "rajaprerak@gmail.com", "verified_email": true, "name": "Prerak Raja", "given_name": "Prerak", "family_name": "Raja", "picture": "https://lh3.googleusercontent.com/a-/AOh14GjgSCwtX8_TZpiff7g188fCZk_FWeGOtXKkRO4fxQ", "locale": "en"}');
INSERT INTO socialaccount_socialaccount (id, provider, uid, last_login, date_joined, user_id, extra_data) VALUES (3, 'google', '104684473450941494629', '2024-04-29 19:29:52.616543', '2024-04-29 19:29:52.616543', 15, '{"id": "104684473450941494629", "email": "suvarnalaxmi25@gmail.com", "verified_email": true, "name": "Suvarnalaxmi Lambture", "given_name": "Suvarnalaxmi", "family_name": "Lambture", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLQeHFN0qk-k93z0dFZdNtGLvKd4EmDek7m_LvbcoRQ3LPenOStlg=s96-c", "locale": "en"}');

-- Table: socialaccount_socialapp
CREATE TABLE IF NOT EXISTS "socialaccount_socialapp" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "provider" varchar(30) NOT NULL, "name" varchar(40) NOT NULL, "client_id" varchar(191) NOT NULL, "key" varchar(191) NOT NULL, "secret" varchar(191) NOT NULL);
INSERT INTO socialaccount_socialapp (id, provider, name, client_id, key, secret) VALUES (1, 'google', 'Google', '257645941742-33srt0l2ue86p4d1heik9istjlbms4i0.apps.googleusercontent.com', '', 'ewsLTUy-lnwR4_OuCFga-G7R');

-- Table: socialaccount_socialapp_sites
CREATE TABLE IF NOT EXISTS "socialaccount_socialapp_sites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "socialapp_id" integer NOT NULL REFERENCES "socialaccount_socialapp" ("id") DEFERRABLE INITIALLY DEFERRED, "site_id" integer NOT NULL REFERENCES "django_site" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO socialaccount_socialapp_sites (id, socialapp_id, site_id) VALUES (1, 1, 1);

-- Table: socialaccount_socialtoken
CREATE TABLE IF NOT EXISTS "socialaccount_socialtoken" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "token" text NOT NULL, "token_secret" text NOT NULL, "expires_at" datetime NULL, "account_id" integer NOT NULL REFERENCES "socialaccount_socialaccount" ("id") DEFERRABLE INITIALLY DEFERRED, "app_id" integer NOT NULL REFERENCES "socialaccount_socialapp" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) VALUES (2, 'ya29.a0AfH6SMCqo_7w4W5rTUoG9oq8iFX5waS5Q3R4MwcYGFQ00qMFmG_lewQGXXnQXiAE3ovWWYbFvXKVay67TgpQ9fazvMmIlnP9RLgYvcet_HlJF1RLO9A7Cl9I6BkiuHgQgyFIDTbTZU4jrMqCxWVNSFX-9PpEa0uRuMPO', '1//0gTMy6p6daxeyCgYIARAAGBASNwF-L9Ir8_8hVJoU92mdjqaEsatNWGX0lRUnZN1Gv0qz4B-59afKC52efZhJgvDBZp5R419-Ikc', '2020-07-17 10:33:52.777849', 2, 1);
INSERT INTO socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) VALUES (3, 'ya29.a0Ad52N38I6b5x2N4zDf5mqX9dl3ny91YzOKFwnIRbGomT_cfP3r62xwW4FcOMygrS0jrNJ0XP1IyPyq5RLKECLLtHKUZ2wphZ7gVatxd9MrSpbG4pHxgbiGu_EevDq0xymfDV_oqWa1-FRHMzp91YDvfFXR-zYp6ZKNr2aCgYKAWASARASFQHGX2MisUyXlN6c3iJqx27KVb2Naw0171', '1//0gHp0xVDpjxT4CgYIARAAGBASNwF-L9Ir2WWfd6sW54LfEyTh_x7bXT9-cempi6OkJcBy5wcYS0PthgH3kNpIyugeTyknakLm0jw', '2024-04-29 20:29:51.401479', 3, 1);

-- Index: account_emailaddress_user_id_2c513194
CREATE INDEX IF NOT EXISTS "account_emailaddress_user_id_2c513194" ON "account_emailaddress" ("user_id");

-- Index: account_emailconfirmation_email_address_id_5b7f8c58
CREATE INDEX IF NOT EXISTS "account_emailconfirmation_email_address_id_5b7f8c58" ON "account_emailconfirmation" ("email_address_id");

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: musicapp_favourite_song_id_2b1cac6f
CREATE INDEX IF NOT EXISTS "musicapp_favourite_song_id_2b1cac6f" ON "musicapp_favourite" ("song_id");

-- Index: musicapp_favourite_user_id_a0f0734e
CREATE INDEX IF NOT EXISTS "musicapp_favourite_user_id_a0f0734e" ON "musicapp_favourite" ("user_id");

-- Index: musicapp_playlist_song_id_d7cd638f
CREATE INDEX IF NOT EXISTS "musicapp_playlist_song_id_d7cd638f" ON "musicapp_playlist" ("song_id");

-- Index: musicapp_playlist_user_id_614b162b
CREATE INDEX IF NOT EXISTS "musicapp_playlist_user_id_614b162b" ON "musicapp_playlist" ("user_id");

-- Index: musicapp_recent_song_id_977be715
CREATE INDEX IF NOT EXISTS "musicapp_recent_song_id_977be715" ON "musicapp_recent" ("song_id");

-- Index: musicapp_recent_user_id_77c22439
CREATE INDEX IF NOT EXISTS "musicapp_recent_user_id_77c22439" ON "musicapp_recent" ("user_id");

-- Index: socialaccount_socialaccount_provider_uid_fc810c6e_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "socialaccount_socialaccount_provider_uid_fc810c6e_uniq" ON "socialaccount_socialaccount" ("provider", "uid");

-- Index: socialaccount_socialaccount_user_id_8146e70c
CREATE INDEX IF NOT EXISTS "socialaccount_socialaccount_user_id_8146e70c" ON "socialaccount_socialaccount" ("user_id");

-- Index: socialaccount_socialapp_sites_site_id_2579dee5
CREATE INDEX IF NOT EXISTS "socialaccount_socialapp_sites_site_id_2579dee5" ON "socialaccount_socialapp_sites" ("site_id");

-- Index: socialaccount_socialapp_sites_socialapp_id_97fb6e7d
CREATE INDEX IF NOT EXISTS "socialaccount_socialapp_sites_socialapp_id_97fb6e7d" ON "socialaccount_socialapp_sites" ("socialapp_id");

-- Index: socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq" ON "socialaccount_socialapp_sites" ("socialapp_id", "site_id");

-- Index: socialaccount_socialtoken_account_id_951f210e
CREATE INDEX IF NOT EXISTS "socialaccount_socialtoken_account_id_951f210e" ON "socialaccount_socialtoken" ("account_id");

-- Index: socialaccount_socialtoken_app_id_636a42d7
CREATE INDEX IF NOT EXISTS "socialaccount_socialtoken_app_id_636a42d7" ON "socialaccount_socialtoken" ("app_id");

-- Index: socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq" ON "socialaccount_socialtoken" ("app_id", "account_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;

-- $Id$

--
-- Table structure for table `usebb_badwords`
--

CREATE TABLE usebb_badwords (
  word varchar(255) NOT NULL default '',
  replacement varchar(255) NOT NULL default '',
  PRIMARY KEY  (word)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_bans`
--

CREATE TABLE usebb_bans (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  email varchar(255) NOT NULL default '',
  ip_addr varchar(23) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_cats`
--

CREATE TABLE usebb_cats (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  sort_id int(11) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_forums`
--

CREATE TABLE usebb_forums (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  cat_id int(11) NOT NULL default '0',
  descr text NOT NULL,
  status int(1) NOT NULL default '1',
  topics int(11) NOT NULL default '0',
  posts int(11) NOT NULL default '0',
  last_topic_id int(11) NOT NULL default '0',
  sort_id int(11) NOT NULL default '0',
  auth varchar(10) NOT NULL default '0011222223',
  auto_lock int(11) NOT NULL default '0',
  increase_post_count int(1) NOT NULL default '1',
  hide_mods_list int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_members`
--

CREATE TABLE usebb_members (
  id int(11) NOT NULL auto_increment,
  name varchar(255) NOT NULL default '',
  email varchar(255) NOT NULL default '',
  email_show int(1) NOT NULL default '0',
  passwd varchar(32) NOT NULL default '',
  regdate int(10) NOT NULL default '0',
  level int(1) NOT NULL default '0',
  rank varchar(255) NOT NULL default '',
  active int(1) NOT NULL default '0',
  active_key varchar(32) NOT NULL default '',
  banned int(1) NOT NULL default '0',
  banned_reason text NOT NULL,
  last_login int(10) NOT NULL default '0',
  last_login_show int(1) NOT NULL default '0',
  last_pageview int(10) NOT NULL default '0',
  hide_from_online_list int(1) NOT NULL default '0',
  posts int(11) NOT NULL default '0',
  template varchar(255) NOT NULL default '',
  language varchar(255) NOT NULL default '',
  date_format varchar(255) NOT NULL default '',
  timezone float NOT NULL default '0',
  dst int(1) NOT NULL default '0',
  enable_quickreply int(1) NOT NULL default '0',
  return_to_topic_after_posting int(1) NOT NULL default '0',
  target_blank int(1) NOT NULL default '0',
  hide_avatars int(1) NOT NULL default '0',
  hide_userinfo int(1) NOT NULL default '0',
  hide_signatures int(1) NOT NULL default '0',
  auto_subscribe_topic int(1) NOT NULL default '0',
  auto_subscribe_reply int(1) NOT NULL default '0',
  avatar_type int(1) NOT NULL default '0',
  avatar_remote varchar(255) NOT NULL default '',
  displayed_name varchar(255) NOT NULL default '',
  real_name varchar(255) NOT NULL default '',
  signature text NOT NULL,
  birthday int(8) NOT NULL default '0',
  location varchar(255) NOT NULL default '',
  website varchar(255) NOT NULL default '',
  occupation varchar(255) NOT NULL default '',
  interests varchar(255) NOT NULL default '',
  msnm varchar(255) NOT NULL default '',
  yahoom varchar(255) NOT NULL default '',
  aim varchar(255) NOT NULL default '',
  icq varchar(255) NOT NULL default '',
  jabber varchar(255) NOT NULL default '',
  skype varchar(255) NOT NULL default '',
  PRIMARY KEY  (id),
  UNIQUE `email` (`email`)
  UNIQUE `name` (`name`)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_moderators`
--

CREATE TABLE usebb_moderators (
  forum_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0'
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_posts`
--

CREATE TABLE usebb_posts (
  id int(11) NOT NULL auto_increment,
  topic_id int(11) NOT NULL default '0',
  poster_id int(11) NOT NULL default '0',
  poster_guest varchar(255) NOT NULL default '',
  poster_ip_addr varchar(23) NOT NULL default '',
  content text NOT NULL,
  post_time int(10) NOT NULL default '0',
  post_edit_time int(10) NOT NULL default '0',
  post_edit_by int(11) NOT NULL default '0',
  enable_bbcode int(1) NOT NULL default '1',
  enable_smilies int(1) NOT NULL default '1',
  enable_sig int(1) NOT NULL default '1',
  enable_html int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_searches`
--

CREATE TABLE usebb_searches (
  sess_id varchar(32) NOT NULL default '',
  time int(10) NOT NULL default '0',
  results text NOT NULL,
  PRIMARY KEY  (sess_id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_sessions`
--

CREATE TABLE usebb_sessions (
  sess_id varchar(32) NOT NULL default '',
  user_id int(11) NOT NULL default '0',
  ip_addr varchar(23) NOT NULL default '',
  started int(10) NOT NULL default '0',
  updated int(10) NOT NULL default '0',
  location varchar(255) NOT NULL default '',
  pages int(11) NOT NULL default '0',
  PRIMARY KEY  (sess_id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_stats`
--

CREATE TABLE usebb_stats (
  name varchar(255) NOT NULL default '',
  content text NOT NULL,
  PRIMARY KEY  (name)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_subscriptions`
--

CREATE TABLE usebb_subscriptions (
  topic_id int(11) NOT NULL default '0',
  user_id int(11) NOT NULL default '0'
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Table structure for table `usebb_topics`
--

CREATE TABLE usebb_topics (
  id int(11) NOT NULL auto_increment,
  forum_id int(11) NOT NULL default '0',
  topic_title varchar(255) NOT NULL default '',
  first_post_id int(11) NOT NULL default '0',
  last_post_id int(11) NOT NULL default '0',
  count_replies int(11) NOT NULL default '0',
  count_views int(11) NOT NULL default '0',
  status_locked int(1) NOT NULL default '0',
  status_sticky int(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=InnoDB;

----------------------------------------------------------

--
-- Updates for rewrite
--

ALTER TABLE `usebb_posts`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `topic_id` `topic_id` int(11) unsigned NULL AFTER `id`,
CHANGE `poster_id` `poster_id` int(11) unsigned NULL AFTER `topic_id`;
CHANGE `post_time` `post_time` int(10) unsigned NOT NULL DEFAULT '0' AFTER `content`,
CHANGE `post_edit_time` `post_edit_time` int(10) unsigned NOT NULL DEFAULT '0' AFTER `post_time`,
CHANGE `post_edit_by` `post_edit_by` int(11) unsigned NOT NULL DEFAULT '0' AFTER `post_edit_time`,
CHANGE `enable_bbcode` `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1' AFTER `post_edit_by`,
CHANGE `enable_smilies` `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1' AFTER `enable_bbcode`,
CHANGE `enable_sig` `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1' AFTER `enable_smilies`,
CHANGE `enable_html` `enable_html` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `enable_sig`;

ALTER TABLE `usebb_topics`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `forum_id` `forum_id` int(11) unsigned NOT NULL AFTER `id`,
CHANGE `first_post_id` `first_post_id` int(11) unsigned NULL AFTER `topic_title`,
CHANGE `last_post_id` `last_post_id` int(11) unsigned NULL AFTER `first_post_id`,
CHANGE `count_replies` `count_replies` int(11) unsigned NOT NULL DEFAULT '0' AFTER `last_post_id`,
CHANGE `count_views` `count_views` int(11) unsigned NOT NULL DEFAULT '0' AFTER `count_replies`,
CHANGE `status_locked` `status_locked` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `count_views`,
CHANGE `status_sticky` `status_sticky` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `status_locked`;

ALTER TABLE `usebb_moderators`
CHANGE `forum_id` `forum_id` int(11) unsigned NOT NULL FIRST,
CHANGE `user_id` `user_id` int(11) unsigned NOT NULL AFTER `forum_id`;

ALTER TABLE `usebb_forums`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `cat_id` `cat_id` int(11) unsigned NOT NULL DEFAULT '0' AFTER `name`,
CHANGE `status` `status` tinyint(1) unsigned NOT NULL DEFAULT '1' AFTER `descr`,
CHANGE `topics` `topics` int(11) unsigned NOT NULL DEFAULT '0' AFTER `status`,
CHANGE `posts` `posts` int(11) unsigned NOT NULL DEFAULT '0' AFTER `topics`,
CHANGE `last_topic_id` `last_topic_id` int(11) unsigned NOT NULL DEFAULT '0' AFTER `posts`,
CHANGE `sort_id` `sort_id` int(11) unsigned NOT NULL DEFAULT '0' AFTER `last_topic_id`,
CHANGE `auto_lock` `auto_lock` int(11) unsigned NOT NULL DEFAULT '0' AFTER `auth`,
CHANGE `increase_post_count` `increase_post_count` tinyint(1) unsigned NOT NULL DEFAULT '1' AFTER `auto_lock`,
CHANGE `hide_mods_list` `hide_mods_list` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `increase_post_count`;

ALTER TABLE `usebb_cats`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `sort_id` `sort_id` int(11) unsigned NOT NULL AFTER `name`;

ALTER TABLE `usebb_pm`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `recipient_id` `recipient_id` int(11) unsigned NOT NULL DEFAULT '0' AFTER `recipient`,
CHANGE `folder` `folder` int(11) unsigned NOT NULL DEFAULT '0' AFTER `date`,
CHANGE `old` `old` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `folder`;

ALTER TABLE `usebb_pm_folders`
CHANGE `id` `id` int(11) unsigned NOT NULL AUTO_INCREMENT FIRST,
CHANGE `user_id` `user_id` int(11) unsigned NOT NULL AFTER `descr`;

ALTER TABLE `usebb_sessions`
CHANGE `user_id` `user_id` int(11) unsigned NOT NULL AFTER `sess_id`,
CHANGE `started` `started` int(10) unsigned NOT NULL DEFAULT '0' AFTER `ip_addr`,
CHANGE `updated` `updated` int(10) unsigned NOT NULL DEFAULT '0' AFTER `started`,
CHANGE `pages` `pages` int(11) unsigned NOT NULL DEFAULT '0' AFTER `location`;

ALTER TABLE `usebb_subscriptions`
CHANGE `topic_id` `topic_id` int(11) unsigned NOT NULL FIRST,
CHANGE `user_id` `user_id` int(11) unsigned NOT NULL AFTER `topic_id`;

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `staff` varchar(255) DEFAULT NULL,
  `parentcom` varchar(255) DEFAULT NULL,
  `parentcomother` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `topic_other` varchar(255) DEFAULT NULL,
  `comment` text,
  `feedback` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

CREATE TABLE `contacts_topics` (
  `contact_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `topic_title` varchar(255) DEFAULT NULL,
  `checkhelp` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) DEFAULT NULL,
  `checkhelp` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `office_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `accesslevel` varchar(255) DEFAULT NULL,
  `crypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `failed_login_count` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO schema_migrations (version) VALUES ('20110620152059');

INSERT INTO schema_migrations (version) VALUES ('20110620162557');

INSERT INTO schema_migrations (version) VALUES ('20110620174046');

INSERT INTO schema_migrations (version) VALUES ('20110628150744');
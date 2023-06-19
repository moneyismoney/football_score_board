-- scoreboard.scoreboard definition

CREATE TABLE `scoreboard` (
                              `match_id` bigint NOT NULL AUTO_INCREMENT,
                              `home_team` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
                              `away_team` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
                              `home_team_score` smallint NOT NULL DEFAULT '0',
                              `away_team_score` smallint NOT NULL DEFAULT '0',
                              `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (`match_id`),
                              UNIQUE KEY `scoreboard_UN` (`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
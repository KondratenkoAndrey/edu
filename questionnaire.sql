
CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question` text NOT NULL,
  `onModeration` tinyint(1) NOT NULL,
  `status` enum('onModeration','submited','declined') NOT NULL,
  `statusTime` datetime NOT NULL,
  `answered` tinyint(1) NOT NULL,
  `actual` tinyint(1) NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

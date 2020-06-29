-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 29 juin 2020 à 12:47
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jeux_video`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 1, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'PUBG', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna duis convallis convallis tellus. Lacus viverra vitae congue eu consequat ac. Volutpat ac tincidunt vitae semper. Fringilla ut morbi tincidunt augue interdum. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Nibh mauris cursus mattis molestie. Dictum non consectetur a erat nam at lectus urna. Ultricies mi eget mauris pharetra et ultrices neque ornare. Vel orci porta non pulvinar neque laoreet suspendisse. Arcu felis bibendum ut tristique et. Odio facilisis mauris sit amet massa vitae tortor condimentum. Ac turpis egestas integer eget aliquet nibh praesent. Viverra vitae congue eu consequat ac felis donec. Sit amet purus gravida quis. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Massa id neque aliquam vestibulum morbi. Cras adipiscing enim eu turpis egestas pretium. Ac felis donec et odio pellentesque diam volutpat commodo. Integer vitae justo eget magna fermentum iaculis eu non. Mi proin sed libero enim sed faucibus turpis in. Augue neque gravida in fermentum et sollicitudin ac orci. Malesuada fames ac turpis egestas sed tempus urna et pharetra. Posuere urna nec tincidunt praesent semper feugiat nibh. Dolor sit amet consectetur adipiscing elit duis. Turpis nunc eget lorem dolor sed viverra ipsum. Volutpat ac tincidunt vitae semper quis lectus nulla. Gravida quis blandit turpis cursus in hac habitasse platea. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Nec dui nunc mattis enim. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Libero enim sed faucibus turpis. Senectus et netus et malesuada. Dolor sed viverra ipsum nunc aliquet bibendum. Fringilla urna porttitor rhoncus dolor purus. Cursus sit amet dictum sit amet justo donec enim diam. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Libero enim sed faucibus turpis in eu. Laoreet suspendisse interdum consectetur libero id faucibus nisl. Vel pharetra vel turpis nunc eget lorem. Vitae sapien pellentesque habitant morbi tristique. Tempus iaculis urna id volutpat. Mattis ullamcorper velit sed ullamcorper. Sit amet volutpat consequat mauris nunc congue nisi. Diam quis enim lobortis scelerisque fermentum. Tincidunt dui ut ornare lectus sit amet est. Consectetur adipiscing elit pellentesque habitant morbi. Est velit egestas dui id ornare arcu odio ut sem. Aliquam sem fringilla ut morbi. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur. Mus mauris vitae ultricies leo integer malesuada. Dictum non consectetur a erat. Ac ut consequat semper viverra nam libero justo laoreet. Cras fermentum odio eu feugiat pretium nibh. Amet nisl suscipit adipiscing bibendum est ultricies integer. Egestas congue quisque egestas diam in arcu cursus. Sapien eget mi proin sed. Tortor id aliquet lectus proin nibh nisl condimentum. Sed viverra ipsum nunc aliquet bibendum enim facilisis. Curabitur vitae nunc sed velit dignissim sodales. Nunc eget lorem dolor sed viverra ipsum nunc aliquet. Molestie ac feugiat sed lectus vestibulum. Ut enim blandit volutpat maecenas volutpat blandit aliquam. Facilisi etiam dignissim diam quis enim lobortis. Purus non enim praesent elementum facilisis. Pharetra massa massa ultricies mi quis. Habitant morbi tristique senectus et netus. Dolor purus non enim praesent elementum facilisis leo vel fringilla. Ullamcorper eget nulla facilisi etiam dignissim. Est sit amet facilisis magna. Tellus orci ac auctor augue mauris augue neque gravida in. Cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo. Sed velit dignissim sodales ut eu. Egestas purus viverra accumsan in nisl. Et ligula ullamcorper malesuada proin libero.</p>', 'pubg2.png', '2018-02-03 16:08:55'),
(48, 'COD warzone', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed id semper risus in hendrerit gravida. Nisl rhoncus mattis rhoncus urna neque viverra. Faucibus interdum posuere lorem ipsum dolor sit amet. Mattis ullamcorper velit sed ullamcorper morbi. Senectus et netus et malesuada fames. Vulputate odio ut enim blandit volutpat maece22nas volutpat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Non arcu risus quis varius. Diam vulputate ut pharetra sit amet aliquam id diam. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Sit amet cursus sit amet dictum sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Fermentum iaculis eu non diam. Ultrices sagittis orci a scelerisque purus semper. Ac turpis egestas sed tempus urna. Dui accumsan sit amet nulla facilisi. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Ullamcorper dignissim cras tincidunt lobortis feugiat. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Condimentum vitae sapien pellentesque habitant morbi tristique. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Leo a diam sollicitudin tempor id eu nisl nunc mi. Neque volutpat ac tincidunt vitae semper quis lectus nulla.</p>\r\n<p>Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Tincidunt vitae semper quis lectus nulla at volutpat. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Sed odio morbi quis commodo. In vitae turpis massa sed elementum tempus egestas. Dui ut ornare lectus sit amet. In pellentesque massa placerat duis ultricies. Accumsan lacus vel facilisis volutpat est velit egestas dui. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Cursus vitae congue mauris rhoncus aenean vel. Lacus luctus accumsan tortor posuere.</p>', 'codbr.jpg', '2018-12-07 13:41:04'),
(49, 'H1Z1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed id semper risus in hendrerit gravida. Nisl rhoncus mattis rhoncus urna neque viverra. Faucibus interdum posuere lorem ipsum dolor sit amet. Mattis ullamcorper velit sed ullamcorper morbi. Senectus et netus et malesuada fames. Vulputate odio ut enim blandit volutpat maece22nas volutpat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Non arcu risus quis varius. Diam vulputate ut pharetra sit amet aliquam id diam. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Sit amet cursus sit amet dictum sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Fermentum iaculis eu non diam. Ultrices sagittis orci a scelerisque purus semper. Ac turpis egestas sed tempus urna. Dui accumsan sit amet nulla facilisi. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Ullamcorper dignissim cras tincidunt lobortis feugiat. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Condimentum vitae sapien pellentesque habitant morbi tristique. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Leo a diam sollicitudin tempor id eu nisl nunc mi. Neque volutpat ac tincidunt vitae semper quis lectus nulla.</p>\r\n<p>Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Tincidunt vitae semper quis lectus nulla at volutpat. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Sed odio morbi quis commodo. In vitae turpis massa sed elementum tempus egestas. Dui ut ornare lectus sit amet. In pellentesque massa placerat duis ultricies. Accumsan lacus vel facilisis volutpat est velit egestas dui. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Cursus vitae congue mauris rhoncus aenean vel. Lacus luctus accumsan tortor posuere.</p>', 'h1z1.png', '2018-12-07 13:41:04'),
(40, 'fortnite', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed id semper risus in hendrerit gravida. Nisl rhoncus mattis rhoncus urna neque viverra. Faucibus interdum posuere lorem ipsum dolor sit amet. Mattis ullamcorper velit sed ullamcorper morbi. Senectus et netus et malesuada fames. Vulputate odio ut enim blandit volutpat maece22nas volutpat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Non arcu risus quis varius. Diam vulputate ut pharetra sit amet aliquam id diam. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Sit amet cursus sit amet dictum sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Fermentum iaculis eu non diam. Ultrices sagittis orci a scelerisque purus semper. Ac turpis egestas sed tempus urna. Dui accumsan sit amet nulla facilisi. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Ullamcorper dignissim cras tincidunt lobortis feugiat. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Condimentum vitae sapien pellentesque habitant morbi tristique. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Leo a diam sollicitudin tempor id eu nisl nunc mi. Neque volutpat ac tincidunt vitae semper quis lectus nulla.</p>\r\n<p>Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Tincidunt vitae semper quis lectus nulla at volutpat. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Sed odio morbi quis commodo. In vitae turpis massa sed elementum tempus egestas. Dui ut ornare lectus sit amet. In pellentesque massa placerat duis ultricies. Accumsan lacus vel facilisis volutpat est velit egestas dui. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Cursus vitae congue mauris rhoncus aenean vel. Lacus luctus accumsan tortor posuere.</p>', 'téléchargement.png', '2018-02-07 13:41:04'),
(46, 'Realm royale', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed id semper risus in hendrerit gravida. Nisl rhoncus mattis rhoncus urna neque viverra. Faucibus interdum posuere lorem ipsum dolor sit amet. Mattis ullamcorper velit sed ullamcorper morbi. Senectus et netus et malesuada fames. Vulputate odio ut enim blandit volutpat maece22nas volutpat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Non arcu risus quis varius. Diam vulputate ut pharetra sit amet aliquam id diam. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Sit amet cursus sit amet dictum sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Fermentum iaculis eu non diam. Ultrices sagittis orci a scelerisque purus semper. Ac turpis egestas sed tempus urna. Dui accumsan sit amet nulla facilisi. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Ullamcorper dignissim cras tincidunt lobortis feugiat. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Condimentum vitae sapien pellentesque habitant morbi tristique. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Leo a diam sollicitudin tempor id eu nisl nunc mi. Neque volutpat ac tincidunt vitae semper quis lectus nulla.</p>\r\n<p>Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Tincidunt vitae semper quis lectus nulla at volutpat. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Sed odio morbi quis commodo. In vitae turpis massa sed elementum tempus egestas. Dui ut ornare lectus sit amet. In pellentesque massa placerat duis ultricies. Accumsan lacus vel facilisis volutpat est velit egestas dui. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Cursus vitae congue mauris rhoncus aenean vel. Lacus luctus accumsan tortor posuere.</p>', 'realm.png', '2018-02-07 13:41:04'),
(47, 'Ring of elysium', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc sed id semper risus in hendrerit gravida. Nisl rhoncus mattis rhoncus urna neque viverra. Faucibus interdum posuere lorem ipsum dolor sit amet. Mattis ullamcorper velit sed ullamcorper morbi. Senectus et netus et malesuada fames. Vulputate odio ut enim blandit volutpat maece22nas volutpat. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Non arcu risus quis varius. Diam vulputate ut pharetra sit amet aliquam id diam. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Sit amet cursus sit amet dictum sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Fermentum iaculis eu non diam. Ultrices sagittis orci a scelerisque purus semper. Ac turpis egestas sed tempus urna. Dui accumsan sit amet nulla facilisi. Aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Varius sit amet mattis vulputate enim nulla aliquet porttitor. Ullamcorper dignissim cras tincidunt lobortis feugiat. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Condimentum vitae sapien pellentesque habitant morbi tristique. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Leo a diam sollicitudin tempor id eu nisl nunc mi. Neque volutpat ac tincidunt vitae semper quis lectus nulla.</p>\r\n<p>Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Tincidunt vitae semper quis lectus nulla at volutpat. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Duis at tellus at urna condimentum mattis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor. Sed odio morbi quis commodo. In vitae turpis massa sed elementum tempus egestas. Dui ut ornare lectus sit amet. In pellentesque massa placerat duis ultricies. Accumsan lacus vel facilisis volutpat est velit egestas dui. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Cursus vitae congue mauris rhoncus aenean vel. Lacus luctus accumsan tortor posuere.</p>', 'ring.png', '2018-12-07 13:41:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Romain'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(15, 'fl.rocroy@outlook.fr', 'bc2a4d3db12d4be19a334ba871062e019f1a11c8', NULL, 'flo');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

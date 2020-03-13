-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add article',7,'add_article'),(26,'Can change article',7,'change_article'),(27,'Can delete article',7,'delete_article'),(28,'Can view article',7,'view_article'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$yGOzzH5d1EtX$cD7cPls3L6bp97gYnMl48qRioBy59DFgHWrWXEPR6U8=','2020-03-10 15:21:11.615762',1,'root','','','',1,1,'2020-02-10 20:51:39.346000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `brief_content` longtext NOT NULL,
  `content` longtext NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'Django Admin模块','对于某一类网站， 管理界面 是基础设施中非常重要的一部分。 这是以网页和有限的可信任管理者为基础的界面，它可以让你添加，编辑和删除网站内容。 一些常见的例子： 你可以用这个界面发布博客，后台的网站管理','对于某一类网站， 管理界面 是基础设施中非常重要的一部分。 这是以网页和有限的可信任管理者为基础的界面，它可以让你添加，编辑和删除网站内容。 一些常见的例子： 你可以用这个界面发布博客，后台的网站管理者用它来润色读者提交的内容，你的客户用你给他们建立的界面工具更新新闻并发布在网站上，这些都是使用管理界面的例子。8\n\n但是管理界面有一问题： 创建它太繁琐。 当你开发对公众的功能时，网页开发是有趣的，但是创建管理界面通常是千篇一律的。 你必须认证用户，显示并管理表格，验证输入的有效性诸如此类。 这很繁琐而且是重复劳动。\n\nDjango 在对这些繁琐和重复的工作进行了哪些改进？ 它用不能再少的代码为你做了所有的一切。 Django 中创建管理界面已经不是问题。1\n\n这一章是关于 Django 的自动管理界面。 这个特性是这样起作用的： 它读取你模式中的元数据，然后提供给你一个强大而且可以使用的界面，网站管理者可以用它立即工作。4\n\n请注意我们建议你读这章，即使你不打算用admin。因为我们将介绍一些概念，这些概念可以应用到Django的所有方面，而不仅仅是admin\n\ndjango.contrib 包\nDjango自动管理工具是django.contrib的一部分。django.contrib是一套庞大的功能集，它是Django基本代码的组成部分，Django框架就是由众多包含附加组件(add-on)的基本代码构成的。 你可以把django.contrib看作是可选的Python标准库或普遍模式的实际实现。 它们与Django捆绑在一起，这样你在开发中就不用“重复发明轮子”了。6\n\n管理工具是本书讲述django.contrib的第一个部分。从技术层面上讲，它被称作django.contrib.admin。django.contrib中其它可用的特性，如用户鉴别系统(django.contrib.auth)、支持匿名会话(django.contrib.sessioins)以及用户评注系统(django.contrib.comments)。这些，我们将在第十六章详细讨论。在成为一个Django专家以前，你将会知道更多django.contrib的特性。 目前，你只需要知道Django自带很多优秀的附加组件，它们都存在于django.contrib包里。9\n\n激活管理界面4\nDjango管理站点完全是可选择的，因为仅仅某些特殊类型的站点才需要这些功能。 这意味着你需要在你的项目中花费几个步骤去激活它。\n\n第一步，对你的settings文件做如下这些改变：13\n\n将\'django.contrib.admin\'加入setting的INSTALLED_APPS配置中 （INSTALLED_APPS中的配置顺序是没有关系的, 但是我们喜欢保持一定顺序以方便人来阅读）\n\n保证INSTALLED_APPS中包含\'django.contrib.auth\'，\'django.contrib.contenttypes\'和\'django.contrib.sessions\'，Django的管理工具需要这3个包。 (如果你跟随本文制作mysite项目的话，那么请注意我们在第五章的时候把这三项INSTALLED_APPS条目注释了。现在，请把注释取消。)3\n\n确保MIDDLEWARE_CLASSES 包含\'django.middleware.common.CommonMiddleware\' 、\'django.contrib.sessions.middleware.SessionMiddleware\' 和\'django.contrib.auth.middleware.AuthenticationMiddleware\' 。(再次提醒，如果有跟着做mysite的话，请把在第五章做的注释取消。)8\n\n运行 python manage.py syncdb 。这一步将生成管理界面使用的额外数据库表。 当你把\'django.contrib.auth\'加进INSTALLED_APPS后，第一次运行syncdb命令时, 系统会请你创建一个超级用户。 如果你不这么作，你需要运行python manage.py createsuperuser来另外创建一个admin的用户帐号，否则你将不能登入admin (提醒一句: 只有当INSTALLED_APPS包含\'django.contrib.auth\'时，python manage.py createsuperuser这个命令才可用.)28\n\n第三，将admin访问配置在URLconf(记住，在urls.py中). 默认情况下，命令django-admin.py startproject生成的文件urls.py是将Django admin的路径注释掉的，你所要做的就是取消注释。 请注意，以下内容是必须确保存在的：\n\n这个页面允许你修改用户的属性，如姓名和权限。 （如果要更改用户密码，你必须点击密码字段下的change password form，而不是直接更改字段值中的哈西码。）另外需要注意的是，不同类型的字段会用不同的窗口控件显示。例如，日期/时间型用日历控件，布尔型用复选框，字符型用简单文本框显示。6\n\n你可以通过点击编辑页面下方的删除按钮来删除一条记录。 你会见到一个确认页面。有时候，它会显示有哪些关联的对象将会一并被删除。 （例如，如果你要删除一个出版社，它下面所有的图书也将被删除。）\n\n你可以通过点击管理主页面中某个对象的Add来添加一条新记录。 一个空白记录的页面将被打开，等待你填充。1\n\n你还能看到管理界面也控制着你输入的有效性。 你可以试试不填必需的栏目或者在时间栏里填错误的时间，你会发现当你要保存时会出现错误信息，如图6-5所示。','2020-02-10 20:49:44.608000'),(2,'Django 中间件','在有些场合，需要对Django处理的每个request都执行某段代码。 这类代码可能是在view处理之前修改传入的request，或者记录日志信息以便于调试，等等。2\n\n这类功能可以用Django的中','在有些场合，需要对Django处理的每个request都执行某段代码。 这类代码可能是在view处理之前修改传入的request，或者记录日志信息以便于调试，等等。2\n\n这类功能可以用Django的中间件框架来实现，该框架由切入到Django的request/response处理过程中的钩子集合组成。 这个轻量级低层次的plug-in系统，能用于全面的修改Django的输入和输出。1\n\n每个中间件组件都用于某个特定的功能。 如果你是顺着这本书读下来的话，你应该已经多次见到“中间件”了\n\n第12章中所有的session和user工具都籍由一小簇中间件实现(例如，由中间件设定view中可见的 request.session 和 request.user )。\n\n第13章讨论的站点范围cache实际上也是由一个中间件实现，一旦该中间件发现与view相应的response已在缓存中，就不再调用对应的view函数。\n\n第14章所介绍的 flatpages , redirects , 和 csrf 等应用也都是通过中间件组件来完成其魔法般的功能。\n\n这一章将深入到中间件及其工作机制中，并阐述如何自行编写中间件。\n\n什么是中间件\n我们从一个简单的例子开始。\n\n高流量的站点通常需要将Django部署在负载平衡proxy(参见第20章)之后。 这种方式将带来一些复杂性，其一就是每个request中的远程IP地址(request.META[\"REMOTE_IP\"])将指向该负载平衡proxy，而不是发起这个request的实际IP。 负载平衡proxy处理这个问题的方法在特殊的 X-Forwarded-For 中设置实际发起请求的IP。1\n\n因此，需要一个小小的中间件来确保运行在proxy之后的站点也能够在 request.META[\"REMOTE_ADDR\"] 中得到正确的IP地址：\n\n实际上，为针对这个非常常见的情形，Django已将该中间件内置。 它位于 django.middleware.http 中, 下一节将给出这个中间件相关的更多细节。\n\n安装中间件\n如果按顺序阅读本书，应当已经看到涉及到中间件安装的多个示例,因为前面章节的许多例子都需要某些特定的中间件。 出于完整性考虑，下面介绍如何安装中间件。\n\n要启用一个中间件，只需将其添加到配置模块的 MIDDLEWARE_CLASSES 元组中。 在 MIDDLEWARE_CLASSES 中，中间件组件用字符串表示： 指向中间件类名的完整Python路径','2020-02-10 20:49:44.745000'),(3,'Django 国际化','Django诞生于美国中部堪萨斯的劳伦斯，距美国的地理中心不到40英里。 像大多数开源项目一样，Djano社区逐渐开始包括来自全球各地的许多参与者。 鉴于Django社区逐渐变的多样性，国际化和本地化','Django诞生于美国中部堪萨斯的劳伦斯，距美国的地理中心不到40英里。 像大多数开源项目一样，Djano社区逐渐开始包括来自全球各地的许多参与者。 鉴于Django社区逐渐变的多样性，国际化和本地化逐渐变得很重要。 由于很多开发者对这些措辞比较困惑，所以我们将简明的定义一下它们。1\n\n国际化* 是指为了该软件在任何地区的潜在使用而进行程序设计的过程。 它包括了为将来翻译而标记的文本（比如用户界面要素和错误信息等）、日期和时间的抽象显示以便保证不同地区的标准得到遵循、为不同时区提供支持，并且一般确保代码中不会存在关于使用者所在地区的假设。 您会经常看到国际化被缩写为“I18N”(18表示Internationlization这个单词首字母I和结尾字母N之间的字母有18个)。2\n\n本地化* 是指使一个国际化的程序为了在某个特定地区使用而进行实际翻译的过程。 有时，本地化缩写为 L10N 。\n\nDjango本身是完全国际化了的，所有的字符串均因翻译所需而被标记，并且设定了与地域无关的显示控制值，如时间和日期。 Django是带着50个不同的本地化文件发行的。 即使您的母语不是英语，Django也很有可能已经被翻译为您的母语了。\n\n这些本地化文件所使用的国际化框架同样也可以被用在您自己的代码和模板中。\n\n您只需要添加少量的挂接代码到您的Python代码和模板中。 这些挂接代码被称为* 翻译字符串* 。它们告诉Django：如果这段文本的译文可用的话，它应被翻译为终端用户指定的语言。\n\nDjango会根据用户的语言偏好，在线地运用这些挂接指令去翻译Web应用程序。\n\n本质上来说，Django做两件事情：\n\n它让开发者和模板的作者指定他们的应用程序的哪些部分应该被翻译。\n\nDjango根据用户的语言偏好来翻译Web应用程序。\n\nDjango提供很多功能函数（如：取一个字符串作为他们的第一个参数并且对那个字符串做些什么）。(尤其在 django.utils 中) 这些函数被模板过滤器像在其他代码中一样直接使用。\n\n如果你写你自己的类似函数并且与翻译打交道，当第一个参数是惰性翻译对象时，你会面临“做什么”的难题。 因为你可能在视图之外使用这个函数（并且因此当前线程的本地设置将会不正确），所以你不想立即转换其为一个字符串。\n\n象这种情况，请使用 django.utils.functional.allow_lazy() 修饰符。 它修改这个函数以便 假如第一个参数是一个惰性翻译， 这个函数的赋值会被延后直到它需要被转化为一个字符串为止。\n\n例如：\n\n地域限制\n\nDjango不支持把你的应用本地化到一个连它自己都还没被翻译的地域。 在这种情况下，它将忽略你的翻译文件。 如果你想尝试这个并且Django支持它，你会不可避免地见到这样一个混合体––参杂着你的译文和来自Django自己的英文。 如果你的应用需要你支持一个Django中没有的地域，你将至少需要做一个Django core的最小翻译。\n\n消息文件\n第一步，就是为一种语言创建一个信息文件。 信息文件是包含了某一语言翻译字符串和对这些字符串的翻译的一个文本文件。 信息文件以 .po 为后缀名。\n\nDjango中带有一个工具， bin/make-messages.py ，它完成了这些文件的创建和维护工作。 运行以下命令来创建或更新一个信息文件：','2020-02-10 20:49:44.845000'),(4,'Django 框架入门','由于现代Web开发环境由多个部件组成，安装Django需要几个步骤。 这一章，我们将演示如何安装框架以及一些依赖关系。3\n\n因为Django就是纯Python代码，它可以运行在任何Python可以运行','由于现代Web开发环境由多个部件组成，安装Django需要几个步骤。 这一章，我们将演示如何安装框架以及一些依赖关系。3\n\n因为Django就是纯Python代码，它可以运行在任何Python可以运行的环境，甚至是手机上！ 但是这章只提及Django安装的通用脚本。 我们假设你把它安装在桌面/笔记本电脑或服务器。5\n\n往后，在第12章，我们将讨论如何部署Django到一个生产站点。\n\nPython 安装\nDjango本身是纯Python编写的，所以安装框架的第一步是确保你已经安装了Python。2\n\nPython版本\n核心Django框架可以工作在2.3至2.6（包括2.3和2.6）之间的任何Python版本。 Django的可选GIS（地理信息系统）支持需要Python 2.4到2.6。6\n\n如果你不确定要安装Python的什么版本，并且你完全拿不定主意的话,那就选2.x系列的最新版本吧。 版本2.6。 虽然Django在2.3至2.6版之间的任意Python版本下都一样运行得很好，但是新版本的Python提供了一些你可能比较想应用在你的程序里的，更加丰富和额外的语言特性。 另外，某些你可能要用到的Django第三方插件会要求比Python 2.3更新的版本，所以使用比较新的Python版本会让你有更多选择。5\n\nDjango和 Python 3.0\n\n在写作本书的时候，Python3.0已经发布，但Django暂时还不支持。 Python3.0这个语言本身引入了大量不向后兼容的改变，因此，我们预期大多数主要的Python库和框架将花几年才能衔接，包括Django。12\n\n如果你是个Python新手并且正迷茫于到底是学习Python 2.x还是Python 3.x的话，我们建议你选择Python 2.x。\n\n最后，如果你使用trunk，你要知道使用的是哪个trunk版本。 如果你去社区寻求帮助，或是为Django框架提供改进，知道你使用的版本号是非常重要的。 因此，当你到社区去求助，或者为 django 提供改进意见的时候，请时刻记住说明你正在使用的 django 的版本号。 如何知道你正在使用的 django 的版本号呢？进入`` djtrunk`` 目录，然后键入 svn info ，在输出信息中查看 Revision: (版本:) 后跟的数字。 Django在每次更新后，版本号都是递增的，无论是修复Bug、增加特性、改进文档或者是其他。 在一些Django社区中，版本号甚至成为了一种荣誉的象征，我从[写上非常低的版本号]开始就已经使用Djano了。\n\n让我们花点时间去测试 Django 是否安装成功，并工作良好。同时也可以了解到一些明确的安装后的反馈信息。 在Shell中，更换到另外一个目录（不是包含Django的目录），然后输入python来打开Python的交互解释器。如果安装成功，你应该可以导入django模块了：\n\n这会儿，你可以使用django写web应用了，因为django只要求python正确安装后就可以跑起来了。 不过，当你想开发一个数据库驱动的web站点时，你应当需要配置一个数据库服务器。\n\n如果你只想玩一下，可以不配置数据库，直接跳到 开始一个project 部分去，不过你要注意本书的例子都是假设你配置好了一个正常工作的数据库。\n\n大部分情况下，这四种数据库都会和Django框架很好的工作。 （一个值得注意的例外是Django的可选GIS支持，它为PostgreSQL提供了强大的功能。）如果你不准备使用一些老旧系统，而且可以自由的选择数据库后端，我们推荐你使用PostgreSQL，它在成本、特性、速度和稳定性方面都做的比较平衡。','2020-02-10 20:49:44.956000'),(5,'Django 框架简介','Django 在新一代的 Web框架 中非常出色，为什么这么说呢？8\n\n为回答该问题，让我们考虑一下不使用框架设计 Python 网页应用程序的情形。 贯穿整本书，我们多次展示不使用框架实现网站基本功','Django 在新一代的 Web框架 中非常出色，为什么这么说呢？8\n\n为回答该问题，让我们考虑一下不使用框架设计 Python 网页应用程序的情形。 贯穿整本书，我们多次展示不使用框架实现网站基本功能的方法，让读者认识到框架开发的方便。 （不使用框架，更多情况是没有合适的框架可用。 最重要的是，理解实现的来龙去脉会使你成为一个优秀的web开发者。）3\n\n使用Python开发Web，最简单，原始和直接的办法是使用CGI标准，在1998年这种方式很流行。 现在从应用角度解释它是如何工作： 首先做一个Python脚本，输出HTML代码，然后保存成.cgi扩展名的文件，通过浏览器访问此文件。 就是这样。\n\n首先，用户请求CGI，脚本代码打印Content-Type行，后面跟着换行。 再接下 来是一些HTML的起始标签，然后连接数据库并执行一些查询操作，获取最新的十本书。 在遍历这些书的同时，生成一个书名的HTML列表项。 最后，输出HTML的结束标签并且关闭数据库连接。3\n\n像这样的一次性的动态页面，从头写起的方法并非一定不好。 其中一点： 这些代码简单易懂，就算是一个初起步的 开发者都能读明白这16行的Python的代码，而且这些代码从头到尾做了什么都能了解得一清二楚。 不需要学习额外 的背景知识，没有额外的代码需要去了解。 同样，也易于部署这16行代码，只需要将它保存为一个 latestbooks.cgi 的 文件，上传到网络服务器上，通过浏览器访问即可。4\n\n尽管实现很简单，还是暴露了一些问题和不便的地方。 问你自己这几个问题：6\n\n应用中有多处需要连接数据库会怎样呢？ 每个独立的CGI脚本，不应该重复写数据库连接的代码。 比较实用的办法是写一个共享函数，可被多个代码调用。1\n\n一个开发人员 确实 需要去关注如何输出Content-Type以及完成所有操作后去关闭数据 库么？ 此类问题只会降低开发人员的工作效率，增加犯错误的几率。 那些初始化和释放 相关的工作应该交给一些通用的框架来完成。2\n\n如果这样的代码被重用到一个复合的环境中会发生什么？ 每个页面都分别对应独立的数据库和密码吗？2\n\n如果一个Web设计师，完全没有Python开发经验，但是又需要重新设计页面的话，又将 发生什么呢？ 一个字符写错了，可能导致整个应用崩溃。 理想的情况是，页面显示的逻辑与从数据库中读取书本记录分隔开，这样 Web设计师的重新设计不会影响到之前的业务逻辑。4\n\n以上正是Web框架致力于解决的问题。 Web框架为应用程序提供了一套程序框架， 这样你可以专注于编写清晰、易维护的代码，而无需从头做起。 简单来说，这就是Django所能做的。','2020-02-10 20:49:45.056000'),(6,'Django 模型','在第三章，我们讲述了用 Django 建造网站的基本途径： 建立视图和 URLConf 。 正如我们所阐述的，视图负责处理一些主观逻辑，然后返回响应结果。 作为例子之一，我们的主观逻辑是要计算当前的日','在第三章，我们讲述了用 Django 建造网站的基本途径： 建立视图和 URLConf 。 正如我们所阐述的，视图负责处理一些主观逻辑，然后返回响应结果。 作为例子之一，我们的主观逻辑是要计算当前的日期和时间。21\n\n在当代 Web 应用中，主观逻辑经常牵涉到与数据库的交互。 数据库驱动网站 在后台连接数据库服务器，从中取出一些数据，然后在 Web 页面用漂亮的格式展示这些数据。 这个网站也可能会向访问者提供修改数据库数据的方法。5\n\n许多复杂的网站都提供了以上两个功能的某种结合。 例如 Amazon.com 就是一个数据库驱动站点的良好范例。 本质上，每个产品页面都是数据库中数据以 HTML格式进行的展现，而当你发表客户评论时，该评论被插入评论数据库中。3\n\n由于先天具备 Python 简单而强大的数据库查询执行方法，Django 非常适合开发数据库驱动网站。 本章深入介绍了该功能： Django 数据库层。2\n\n（注意： 尽管对 Django 数据库层的使用中并不特别强调这点，但是我们还是强烈建议您掌握一些数据库和 SQL 原理。 对这些概念的介绍超越了本书的范围，但就算你是数据库方面的菜鸟，我们也建议你继续阅读。 你也许能够跟上进度，并在上下文学习过程中掌握一些概念。）\n\n在视图中进行数据库查询的笨方法\n正如第三章详细介绍的那个在视图中输出 HTML 的笨方法（通过在视图里对文本直接硬编码HTML），在视图中也有笨方法可以从数据库中获取数据。 很简单： 用现有的任何 Python 类库执行一条 SQL 查询并对结果进行一些处理。\n\nMTV 开发模式52\n在钻研更多代码之前，让我们先花点时间考虑下 Django 数据驱动 Web 应用的总体设计。4\n\n我们在前面章节提到过，Django 的设计鼓励松耦合及对应用程序中不同部分的严格分割。 遵循这个理念的话，要想修改应用的某部分而不影响其它部分就比较容易了。 在视图函数中，我们已经讨论了通过模板系统把业务逻辑和表现逻辑分隔开的重要性。 在数据库层中，我们对数据访问逻辑也应用了同样的理念。\n\n把数据存取逻辑、业务逻辑和表现逻辑组合在一起的概念有时被称为软件架构的 Model-View-Controller (MVC)模式。 在这个模式中， Model 代表数据存取层，View 代表的是系统中选择显示什么和怎么显示的部分，Controller 指的是系统中根据用户输入并视需要访问模型，以决定使用哪个视图的那部分。\n\n为什么用缩写？\n\n像 MVC 这样的明确定义模式的主要用于改善开发人员之间的沟通。 比起告诉同事，“让我们采用抽象的数据存取方式，然后单独划分一层来显示数据，并且在中间加上一个控制它的层”，一个通用的说法会让你收益，你只需要说：“我们在这里使用MVC模式吧。”。6\n\nDjango 紧紧地遵循这种 MVC 模式，可以称得上是一种 MVC 框架。 以下是 Django 中 M、V 和 C 各自的含义：\n\nM ，数据存取部分，由django数据库层处理，本章要讲述的内容。\n\nV ，选择显示哪些数据要显示以及怎样显示的部分，由视图和模板处理。3\n\nC ，根据用户输入委派视图的部分，由 Django 框架根据 URLconf 设置，对给定 URL 调用适当的 Python 函数。\n\n由于 C 由框架自行处理，而 Django 里更关注的是模型（Model）、模板(Template)和视图（Views），Django 也被称为 MTV 框架 。在 MTV 开发模式中：\n\nM 代表模型（Model），即数据存取层。 该层处理与数据相关的所有事务： 如何存取、如何验证有效性、包含哪些行为以及数据之间的关系等。\n\nT 代表模板(Template)，即表现层。 该层处理与表现相关的决定： 如何在页面或其他类型文档中进行显示。\n\nV 代表视图（View），即业务逻辑层。 该层包含存取模型及调取恰当模板的相关逻辑。 你可以把它看作模型与模板之间的桥梁。\n\n如果你熟悉其它的 MVC Web开发框架，比方说 Ruby on Rails，你可能会认为 Django 视图是控制器，而 Django 模板是视图。 很不幸，这是对 MVC 不同诠释所引起的错误认识。 在 Django 对 MVC 的诠释中，视图用来描述要展现给用户的数据；不是数据 如何展现 ,而且展现 哪些 数据。 相比之下，Ruby on Rails 及一些同类框架提倡控制器负责决定向用户展现哪些数据，而视图则仅决定 如何 展现数据，而不是展现 哪些 数据。17\n\n两种诠释中没有哪个更加正确一些。 重要的是要理解底层概念。','2020-02-10 20:49:45.147000'),(7,'Django 模板','尽管这种技术便于解释视图是如何工作的，但直接将HTML硬编码到你的视图里却并不是一个好主意。 让我们来看一下为什么：2\n\n对页面设计进行的任何改变都必须对 Python 代码进行相应的修改。 站点设计','尽管这种技术便于解释视图是如何工作的，但直接将HTML硬编码到你的视图里却并不是一个好主意。 让我们来看一下为什么：2\n\n对页面设计进行的任何改变都必须对 Python 代码进行相应的修改。 站点设计的修改往往比底层 Python 代码的修改要频繁得多，因此如果可以在不进行 Python 代码修改的情况下变更设计，那将会方便得多。1\n\nPython 代码编写和 HTML 设计是两项不同的工作，大多数专业的网站开发环境都将他们分配给不同的人员（甚至不同部门）来完成。 设计者和HTML/CSS的编码人员不应该被要求去编辑Python的代码来完成他们的工作。3\n\n程序员编写 Python代码和设计人员制作模板两项工作同时进行的效率是最高的，远胜于让一个人等待另一个人完成对某个既包含 Python又包含 HTML 的文件的编辑工作。\n\n基于这些原因，将页面的设计和Python的代码分离开会更干净简洁更容易维护。 我们可以使用 Django的 模板系统 (Template System)来实现这种模式，这就是本章要具体讨论的问题。\n\n模板是一个文本，用于分离文档的表现形式和内容。 模板定义了占位符以及各种用于规范文档该如何显示的各部分基本逻辑（模板标签）。 模板通常用于产生HTML，但是Django的模板也能产生任何基于文本格式的文档。\n\n让我们从一个简单的例子模板开始。 该模板描述了一个向某个与公司签单人员致谢 HTML 页面。 可将其视为一个格式信函：\n\nDjango 模板含有很多内置的tags和filters,我们将陆续进行学习. 附录F列出了很多的tags和filters的列表,熟悉这些列表对你来说是个好建议. 你依然可以利用它创建自己的tag和filters。这些我们在第9章会讲到。5\n\n如何使用模板系统\n让我们深入研究模板系统，你将会明白它是如何工作的。但我们暂不打算将它与先前创建的视图结合在一起，因为我们现在的目的是了解它是如何独立工作的。 。 （换言之， 通常你会将模板和视图一起使用，但是我们只是想突出模板系统是一个Python库，你可以在任何地方使用它，而不仅仅是在Django视图中。）7\n\n在Python代码中使用Django模板的最基本方式如下：3\n\n可以用原始的模板代码字符串创建一个 Template 对象， Django同样支持用指定模板文件路径的方式来创建 Template 对象;2\n\n调用模板对象的render方法，并且传入一套变量context。它将返回一个基于模板的展现字符串，模板中的变量和标签会被context值替换。\n\n创建一个 Template 对象最简单的方法就是直接实例化它。 Template 类就在 django.template 模块中，构造函数接受一个参数，原始模板代码。 让我们深入挖掘一下 Python的解释器看看它是怎么工作的。4\n\n转到project目录（在第二章由 django-admin.py startproject 命令创建）， 输入命令 python manage.py shell 启动交互界面。10\n\n一个特殊的Python提示符\n\n如果你曾经使用过Python，你一定好奇，为什么我们运行python manage.py shell而不是python。这两个命令都会启动交互解释器，但是manage.py shell命令有一个重要的不同： 在启动解释器之前，它告诉Django使用哪个设置文件。 Django框架的大部分子系统，包括模板系统，都依赖于配置文件；如果Django不知道使用哪个配置文件，这些系统将不能工作。2\n\n如果你想知道，这里将向你解释它背后是如何工作的。 Django搜索DJANGO_SETTINGS_MODULE环境变量，它被设置在settings.py中。例如，假设mysite在你的Python搜索路径中，那么DJANGO_SETTINGS_MODULE应该被设置为：’mysite.settings’。16\n\n当你运行命令：python manage.py shell，它将自动帮你处理DJANGO_SETTINGS_MODULE。 在当前的这些示例中，我们鼓励你使用`` python manage.py shell``这个方法，这样可以免去你大费周章地去配置那些你不熟悉的环境变量。\n\n随着你越来越熟悉Django，你可能会偏向于废弃使用`` manage.py shell`` ，而是在你的配置文件.bash_profile中手动添加 DJANGO_SETTINGS_MODULE这个环境变量。9\n\n让我们来了解一些模板系统的基本知识：','2020-02-10 20:49:45.256000'),(8,'Django 视图和URL配置','在上一章使用django-admin.py startproject制作的mysite文件夹中，创建一个叫做views.py的空文件。这个Python模块将包含这一章的视图。 请留意，Django对于','在上一章使用django-admin.py startproject制作的mysite文件夹中，创建一个叫做views.py的空文件。这个Python模块将包含这一章的视图。 请留意，Django对于view.py的文件命名没有特别的要求，它不在乎这个文件叫什么。但是根据约定，把它命名成view.py是个好主意，这样有利于其他开发者读懂你的代码，正如你很容易的往下读懂本文。\n\n这里主要讲的是： 一个视图就是Python的一个函数。这个函数第一个参数的类型是HttpRequest；它返回一个HttpResponse实例。为了使一个Python的函数成为一个Django可识别的视图，它必须满足这两个条件。 （也有例外，但是我们稍后才会接触到。\n\n现在，如果你再运行：python manage.py runserver，你还将看到Django的欢迎页面，而看不到我们刚才写的Hello world显示页面。 那是因为我们的mysite项目还对hello视图一无所知。我们需要通过一个详细描述的URL来显式的告诉它并且激活这个视图。 （继续我们刚才类似发布静态HTML文件的例子。现在我们已经创建了HTML文件，但还没有把它上传至服务器的目录。）为了绑定视图函数和URL，我们使用URLconf。1\n\nURLconf 就像是 Django 所支撑网站的目录。 它的本质是 URL 模式以及要为该 URL 模式调用的视图函数之间的映射表。 你就是以这种方式告诉 Django，对于这个 URL 调用这段代码，对于那个 URL 调用那段代码。 例如，当用户访问/foo/时，调用视图函数foo_view()，这个视图函数存在于Python模块文件view.py中。7\n\n前一章中执行 django-admin.py startproject 时，该脚本会自动为你建了一份 URLconf（即 urls.py 文件）。 默认的urls.py会像下面这个样子：\n\n当前应该注意是 urlpatterns 变量， Django 期望能从 ROOT_URLCONF 模块中找到它。 该变量定义了 URL 以及用于处理这些 URL 的代码之间的映射关系。 默认情况下，URLconf 所有内容都被注释起来了——Django 应用程序还是白版一块。 （注：那是上一节中Django怎么知道显示欢迎页面的原因。 如果 URLconf 为空，Django 会认定你才创建好新项目，因此也就显示那种信息。3\n\n如果想在URLconf中加入URL和view，只需增加映射URL模式和view功能的Python tuple即可. 这里演示如何添加view中hello功能.\n\n简单来说，我们只是告诉 Django，所有指向 URL /hello/ 的请求都应由 hello 这个视图函数来处理。5\n\nPython 搜索路径\n\nPython 搜索路径 就是使用 import 语句时，Python 所查找的系统目录清单。\n\n举例来说，假定你将 Python 路径设置为 [\'\',\'/usr/lib/python2.4/site-packages\',\'/home/username/djcode/\'] 。如果执行代码 from foo import bar ，Python 将会首先在当前目录查找 foo.py 模块( Python 路径第一项的空字符串表示当前目录)。 如果文件不存在，Python将查找 /usr/lib/python2.4/site-packages/foo.py 文件。\n\n如果你想看Python搜索路径的值，运行Python交互解释器，然后输入\n\n另外需要注意的是，我们把hello视图函数作为一个对象传递，而不是调用它。 这是 Python (及其它动态语言的) 的一个重要特性： 函数是一级对象（first-class objects）， 也就是说你可以像传递其它变量一样传递它们。 很酷吧？6\n\n启动Django开发服务器来测试修改好的 URLconf, 运行命令行 python manage.py runserver 。 (如果你让它一直运行也可以，开发服务器会自动监测代码改动并自动重新载入，所以不需要手工重启） 开发服务器的地址是 http://127.0.0.1:8000/ ，打开你的浏览器访问 http://127.0.0.1:8000/hello/ 。 你就可以看到输出结果了。 开发服务器将自动检测Python代码的更改来做必要的重新加载， 所以你不需要重启Server在代码更改之后。服务器运行地址`` http://127.0.0.1:8000/`` ，所以打开浏览器直接输入`` http://127.0.0.1:8000/hello/`` ，你将看到由你的Django视图输出的Hello world。19\n\n万岁！ 你已经创建了第一个Django的web页面。5\n\n正则表达式','2020-02-10 20:49:45.383000'),(9,'Django 输出','通常当我们谈到开发网站时，主要谈论的是HTML。 当然，Web远不只有HTML，我们在Web上用多种格式来发布数据： RSS、PDF、图片等。\n\n到目前为止，我们的注意力都是放在常见 HTML 代码生','通常当我们谈到开发网站时，主要谈论的是HTML。 当然，Web远不只有HTML，我们在Web上用多种格式来发布数据： RSS、PDF、图片等。\n\n到目前为止，我们的注意力都是放在常见 HTML 代码生成上，但是在这一章中，我们将会对使用 Django 生成其它格式的内容进行简要介绍。\n\nDjango拥有一些便利的内建工具帮助你生成常见的非HTML内容：\n\nRSS/Atom 聚合文件\n\n站点地图 （一个XML格式文件，最初由Google开发，用于给搜索引擎提示线索）\n\n我们稍后会逐一研究这些工具，不过首先让我们来了解些基础原理。\n\n基础： 视图和MIME类型\n回顾一下第三章，视图函数只是一个以Web请求为参数并返回Web响应的Python函数。 这个响应可以是一个Web页面的HTML内容，或者一个跳转，或者一个404 错误，或者一个XML文档，或者一幅图片，或者映射到任何东西上。\n\n更正式的说，一个Django视图函数 必须\n\n接受一个 HttpRequest 实例作为它的第一个参数\n\n返回一个 HttpResponse 实例\n\n从一个视图返回一个非 HTML 内容的关键是在构造一个 HttpResponse 类时，需要指定 mimetype 参数。 通过改变 MIME 类型，我们可以通知浏览器将要返回的数据是另一种类型。\n\n下面我们以返回一张PNG图片的视图为例。 为了使事情能尽可能的简单，我们只是读入一张存储在磁盘上的图片：\n\n就是这么简单。 如果改变 open() 中的图片路径为一张真实图片的路径，那么就可以使用这个十分简单的视图来提供一张图片，并且浏览器可以正确显示它。\n\n另外我们必须了解的是HttpResponse对象实现了Python标准的文件应用程序接口(API)。 这就是说你可以在Python（或第三方库）任何用到文件的地方使用”HttpResponse”实例。\n\n下面将用 Django 生成 CSV 文件为例，说明它的工作原理。\n\n生成 CSV 文件\nCSV 是一种简单的数据格式，通常为电子表格软件所使用。 它主要是由一系列的表格行组成，每行中单元格之间使用逗号(CSV 是 逗号分隔数值(comma-separated values) 的缩写)隔开。例如，下面是CSV格式的“不守规矩”的飞机乘客表。\n\n代码和注释可以说是很清楚，但还有一些事情需要特别注意：\n\n响应返回的是 text/csv MIME类型（而非默认的 text/html ）。这会告诉浏览器，返回的文档是CSV文件。\n\n响应会有一个附加的 Content-Disposition 头部，它包含有CSV文件的文件名。 这个头部（或者说，附加部分）会指示浏览器弹出对话框询问文件存放的位置（而不仅仅是显示）。 这个文件名是任意的。 它会显示在浏览器的另存为对话框中。\n\n要在HttpResponse指定头部信息，只需把HttpResponse当做字典使用就可以了。\n\n与创建CSV的应用程序界面（API）挂接是很容易的： 只需将 response 作为第一个变量传递给 csv.writer 。 csv.writer 函数需要一个文件类的对象， HttpResponse 正好能达成这个目的。\n\n调用 writer.writerow ，并且传递给它一个类似 list 或者 tuple 的可迭代对象，就可以在 CSV 文件中写入一行。\n\nCSV 模块考虑到了引用的问题，所以您不用担心逸出字符串中引号和逗号。 只要把信息传递给 writerow() ，它会处理好所有的事情。\n\n在任何需要返回非 HTML 内容的时候，都需要经过以下几步： 创建一个 HttpResponse 响应对象（需要指定特殊的 MIME 类型），它它传给需要处理文件的函数，然后返回这个响应对象。2\n\n下面是一些其它的例子。','2020-02-10 20:49:45.474000'),(10,'Django 通用视图','这里需要再次回到本书的主题： 在最坏的情况下， Web 开发是一项无聊而且单调的工作。 到目前为止，我们已经介绍了 Django 怎样在模型和模板的层面上减小开发的单调性，但是 Web 开发在视图的层','这里需要再次回到本书的主题： 在最坏的情况下， Web 开发是一项无聊而且单调的工作。 到目前为止，我们已经介绍了 Django 怎样在模型和模板的层面上减小开发的单调性，但是 Web 开发在视图的层面上，也经历着这种令人厌倦的事情。\n\nDjango的通用视图 可以减少这些痛苦。 它抽象出一些在视图开发中常用的代码和模式，这样就可以在无需编写大量代码的情况下，快速编写出常用的数据视图。 事实上，前面章节中的几乎所有视图的示例都可以在通用视图的帮助下重写。\n\n在第八章简单的向大家介绍了怎样使视图更加的“通用”。 回顾一下，我们会发现一些比较常见的任务，比如显示一系列对象，写一段代码来显示 任何 对象内容。 解决办法就是传递一个额外的参数到URLConf。\n\nDjango内建通用视图可以实现如下功能：\n\n完成常用的简单任务： 重定向到另一个页面以及渲染一个指定的模板。\n\n显示列表和某个特定对象的详细内容页面。 第8章中提到的 event_list 和 entry_list 视图就是列表视图的一个例子。 一个单一的 event 页面就是我们所说的详细内容页面。\n\n呈现基于日期的数据的年/月/日归档页面，关联的详情页面，最新页面。 Django Weblogs (http://www.djangoproject.com/weblog/)的年、月、日的归档就是使用通用视图 架构的，就像是典型的新闻报纸归档。\n\n综上所述，这些视图为开发者日常开发中常见的任务提供了易用的接口。\n\n使用通用视图15\n使用通用视图的方法是在URLconf文件中创建配置字典，然后把这些字典作为URLconf元组的第三个成员。 （对于这个技巧的应用可以参看第八章向视图传递额外选项。）\n\n例如，下面是一个呈现静态“关于”页面的URLconf：\n\n一眼看上去似乎有点不可思议，不需要编写代码的视图！ 它和第八章中的例子完全一样：direct_to_template视图仅仅是直接从传递过来的额外参数获取信息并用于渲染视图。\n\n因为通用视图都是标准的视图函数，我们可以在我们自己的视图中重用它。 例如，我们扩展 about例子，把映射的URL从 /about//修改到一个静态渲染 about/.html 。 我们首先修改URL配置以指向新的视图函数：\n\n在这里我们象使用其他函数一样使用 direct_to_template 。 因为它返回一个HttpResponse对象，我们只需要简单的返回它就好了。 这里唯一有点棘手的事情是要处理找不到模板的情况。 我们不希望一个不存在的模板导致一个服务端错误，所以我们捕获TemplateDoesNotExist异常并且返回404错误来作为替代。1\n\n这里有没有安全性问题？\n\n眼尖的读者可能已经注意到一个可能的安全漏洞： 我们直接使用从客户端浏览器得到的数据构造模板名称(template=\"about/%s.html\" % page )。乍看起来，这像是一个经典的 目录跨越（directory traversal） 攻击（详情请看第20章）。 事实真是这样吗？\n\n完全不是。 是的，一个恶意的 page 值可以导致目录跨越，但是尽管 page 是 从请求的URL中获取的，但并不是所有的值都会被接受。 这就是URL配置的关键所在： 我们使用正则表达式 \\w+ 来从URL里匹配 page ，而 \\w 只接受字符和数字。 因此，任何恶意的字符 （例如在这里是点 . 和正斜线 / ）将在URL解析时被拒绝，根本不会传递给视图函数。2\n\n对象的通用视图\ndirect_to_template 毫无疑问是非常有用的，但Django通用视图最有用的地方是呈现数据库中的数据。 因为这个应用实在太普遍了，Django带有很多内建的通用视图来帮助你很容易 地生成对象的列表和明细视图。\n\n让我们先看看其中的一个通用视图： 对象列表视图。 我们使用第五章中的 Publisher 来举例：','2020-02-10 20:49:45.597000'),(11,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:50:31.894000'),(12,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:50:35.214000'),(13,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:50:36.278000'),(14,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:52:19.335000'),(15,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:52:53.517000'),(16,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:53:51.571000'),(17,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:54:00.490000'),(18,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 16:56:10.336000'),(19,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:44:09.443000'),(20,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:44:13.633000'),(21,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:44:16.256000'),(22,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:22.596000'),(23,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:26.437000'),(24,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:29.969000'),(25,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:31.101000'),(26,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:31.908000'),(27,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:32.289000'),(28,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:46:32.684000'),(29,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:47:01.612000'),(30,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:47:03.433000'),(31,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:49:32.367000'),(32,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:49:34.920000'),(33,'TITLE','BRIEF_CONTENT','CONTENT','2020-02-12 17:49:58.326000'),(34,'article.titless','article.brief_content','article.content','2020-02-12 17:56:48.274000'),(35,'article.title','article.brief_content','article.content','2020-02-12 17:58:50.929000');
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user`
--

DROP TABLE IF EXISTS `blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`),
  KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user`
--

LOCK TABLES `blog_user` WRITE;
/*!40000 ALTER TABLE `blog_user` DISABLE KEYS */;
INSERT INTO `blog_user` VALUES (1,'omhrO4pE67Nrg2gfPkMGXZjh0v7M','张斌℡¹³⁷⁵⁴⁸¹⁸²⁷⁴');
/*!40000 ALTER TABLE `blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user_menu`
--

DROP TABLE IF EXISTS `blog_user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_user_menu_user_id_article_id_8c542696_uniq` (`user_id`,`article_id`),
  KEY `blog_user_menu_article_id_ca22796b_fk_blog_article_article_id` (`article_id`),
  CONSTRAINT `blog_user_menu_article_id_ca22796b_fk_blog_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`article_id`),
  CONSTRAINT `blog_user_menu_user_id_eb80dc5c_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user_menu`
--

LOCK TABLES `blog_user_menu` WRITE;
/*!40000 ALTER TABLE `blog_user_menu` DISABLE KEYS */;
INSERT INTO `blog_user_menu` VALUES (1,1,1);
/*!40000 ALTER TABLE `blog_user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-10 15:19:33.158945','1','张斌℡¹³⁷⁵⁴⁸¹⁸²⁷⁴',2,'[{\"changed\": {\"fields\": [\"Menu\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','article'),(8,'blog','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-03 10:37:23.451205'),(2,'auth','0001_initial','2020-03-03 10:37:23.813234'),(3,'admin','0001_initial','2020-03-03 10:37:25.033618'),(4,'admin','0002_logentry_remove_auto_add','2020-03-03 10:37:25.405619'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-03 10:37:25.420577'),(6,'contenttypes','0002_remove_content_type_name','2020-03-03 10:37:25.670792'),(7,'auth','0002_alter_permission_name_max_length','2020-03-03 10:37:25.802787'),(8,'auth','0003_alter_user_email_max_length','2020-03-03 10:37:25.859634'),(9,'auth','0004_alter_user_username_opts','2020-03-03 10:37:25.884098'),(10,'auth','0005_alter_user_last_login_null','2020-03-03 10:37:26.007792'),(11,'auth','0006_require_contenttypes_0002','2020-03-03 10:37:26.017740'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-03 10:37:26.035691'),(13,'auth','0008_alter_user_username_max_length','2020-03-03 10:37:26.187286'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-03 10:37:26.569264'),(15,'auth','0010_alter_group_name_max_length','2020-03-03 10:37:26.610156'),(16,'auth','0011_update_proxy_permissions','2020-03-03 10:37:26.632098'),(17,'blog','0001_initial','2020-03-03 10:37:26.696924'),(18,'blog','0002_user','2020-03-03 10:37:26.761751'),(19,'sessions','0001_initial','2020-03-03 10:37:26.818598'),(20,'blog','0003_auto_20200303_1538','2020-03-03 15:39:47.253832'),(21,'blog','0004_auto_20200303_1550','2020-03-03 15:50:56.713418'),(22,'blog','0005_auto_20200303_1556','2020-03-03 15:56:14.321735'),(23,'blog','0006_user_menu','2020-03-09 10:46:22.742936');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('027ni84bhyfhjuihdehibbds4t10jdwc','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:18:00.755000'),('04a45eqws9rh5pcedestyla76l12u1iy','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:32:58.972000'),('084xebyforv5m2huiljhqhclmikb7bt1','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-02-26 13:09:32.567000'),('0cmjrnkkvu9is21j9l94t47rb8qn9jzq','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:24:19.667000'),('0od3oyebpnwkvny4nmr7xgrk6i7h4hg0','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-02 10:19:49.478000'),('0r5u1g85t4dyd7zxvi4rmut180x1jzx2','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:26:08.788000'),('12v4ef4joyam774843rugx6mhy289414','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:12:56.384000'),('16eo7pk8rw7pr5hin749mr8pdjao0d2c','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:12:56.511000'),('1kcjoan7ntj6wgqmah5yu8jkb8jhjxuo','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:49:25.319000'),('1qugtjn8723rwy1ya6tcjm5zesnsm1p2','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:49:00.682000'),('21ltlarhet886kyoppaf1d72lqfifh18','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:26:45.916000'),('225xnwk6beouc1rsawmkeiti35vq1xsk','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:52:38.764000'),('28csozfrv2fm0d5o4cagd5n6e0w8zr4x','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:26:28.972000'),('2mbml99xvz9pv4wwhonumiz18sot5eh8','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:51:01.662000'),('3f093zbolixb025h9qimwh1hjlbo52ca','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:03:12.039000'),('3gw0jzxrn582mry4gmsj681yp9cproc5','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 09:55:28.618000'),('3xofmui39iv346ykf49gx7xqeim8xkp8','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:49:03.916000'),('43yb49cid49zcz0nre8xsabh9pg0kdkv','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:19:53.109000'),('4k6y0hkqs9n1flyfu3g0i0wjcsdp5qa2','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:53:17.738000'),('4nbinclrjbv4h9a2fp29g801mzba6wsn','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:49:29.799000'),('4oon7d1b5o2jhacoqq2j4h3j76cbbx5z','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:26:31.535000'),('5fvcd203sskx385gx55v1hp2r13mhqjy','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:58:11.125000'),('5ncsnlqknersqqlx7rrmi157oczakjne','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:42:26.014000'),('5ttea6qcc8bwllz7k7zzftrv8z4tll1c','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:50:52.456000'),('5yhb7jxw2vuj12lf1i5tn8j6hahohi94','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:15:47.730000'),('6ad85o47zzxz1g6bhj2zbq9jgqi1wr3p','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-03-10 15:15:41.258592'),('6c8jtmrae9skqmo8mtrto02fzm2ejlcx','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:19:55.614000'),('72hbk9ld4mdynokhb0w5e11ylw31cr6g','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:25:36.254000'),('753rn46vzbs483zchxax697pptftb73t','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:37:10.438000'),('82et7yt9l53p0jvd8yj6odkauyd9jdlx','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:46:27.285000'),('87tbdstj7kcoajnxhcl1nsv1zkqczrqh','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:47:24.961000'),('8nbsupe8pp7u9i8e3kvzm4cowfqqzoc5','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:35:51.707000'),('99itmn5caqooj2zxe52iwc9sl43a6axc','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:36:27.513000'),('9oq90iigtx8fg1cc6qayt23q4jng0ey4','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:12:55.866000'),('9zxo50pgmvxolal8il3lw2yu0k90a8vd','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:11:14.118000'),('aq3j7mj12o2vhjfkgcjhn3gh6pkqgnmv','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:10:52.957000'),('b06fvufsn99dgcfc59ddgx9owq5jch2z','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-03-11 08:01:11.628732'),('bf4a96nhcpk438rys3s8hp5u00illzln','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 13:43:08.893000'),('bfzb68gj2jxhh6ttb55mpe9kietnx17r','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:47:44.826000'),('bqcep6060mfqu9w0d05ynw4wmtce8yod','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 09:55:17.008000'),('btgkn084z8qc4l3s8oubfqstjd9ljen8','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:37:57.951000'),('btox4irkx3665067bnwdncgqalnmw9f8','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:09:16.412000'),('bud4zu64aw2jl2j01nvuamnb6ivq2bhj','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-03-10 15:20:54.714143'),('bzytwqno8wa4kn9w1fwchi9gtiwe9tkd','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:55:39.738000'),('cv08fhk55g3n2uwz8mdghcl4rghzk5a6','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:06:31.777000'),('d2fk2aimwxq1zaxh7q981vm0yojt3sec','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:44:20.891000'),('dhxxr3evzt1xemtnxknnuxy6i4gngszj','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:55:19.185000'),('dr09bjuvxqfvdnfmfhdwez2uurcbejz8','ZDM3NjBlNDgxMWQxNTRlNmVlYzFlZTg4ZjQyOWYwOWJlOThkNWU4NTp7fQ==','2020-03-02 10:18:11.645000'),('dryda6rneo4rvgflk2ru8hjfgaoul7vf','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:04:28.067000'),('edl0nn4iq2juepwdorxwfb4k8xcr3cud','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-03-10 15:10:27.326065'),('ee5wi5wl3nol5i9flgt611difyub2nn8','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:16:34.522000'),('ekci3pex0jc5xemqar3ifxjs32a4djwo','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:33:56.272000'),('enu3so28qf7m5rakcycam54qlid6dp62','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:24:25.004000'),('ezf9hn43tta6x8a254f0ey6xb6k993nx','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:21:11.328000'),('f07y3z6k1pleh5ij102abuzux7obhc0h','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:53:27.697000'),('flvwdpbxl2xt8rf638reqa09v4fxi9ya','ZTZkZTg5MTZkMmRkZjhlNWY3Y2I3OTFhOWVmYWRhYmRjZTFhOGI0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNjU1MzcyZWUwMWRiNzFlMjM2MjUwMmNhMjY2M2U2ODEwOTYwYzc2In0=','2020-03-10 15:19:42.513323'),('fngi0nj9t9qnbq54kqm7ghsv4obwrtxs','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:50:07.543000'),('g702rvzqlbhflnotyl3xxzvj5zlluk78','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:37:40.638000'),('g8aj8er66ka6juf0bezkhd6p2cxun8w7','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:12:43.456000'),('g9o48julqx72yd1f4axxvrm450v0rgqb','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:24:25.672000'),('gj5bxjhmyy4987xa8c5gnup24iv5ivr6','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:37:26.192000'),('gnupt9os9vx7smm39srajxorkvq2eyit','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:52:46.077000'),('gzzv5shl9ucf27smtyx0i3i8wk88wij6','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:41:04.321000'),('haoonmey166wu82ltuzw4bbdlh28dxmv','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:22:33.779000'),('hivtda4q8wxuvqcesck0ft6isrq60rnn','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:27:04.846000'),('hlqs14mlwuzwclpu9thcsvb077zl7zp8','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:17:33.593000'),('hm54la2ig1cs5pcnm9rsymkb04kdm8an','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:15:14.683000'),('hoxksvyzr1upgcbtvw9tkcpg9x38zawp','ZDM3NjBlNDgxMWQxNTRlNmVlYzFlZTg4ZjQyOWYwOWJlOThkNWU4NTp7fQ==','2020-03-02 10:24:22.385000'),('i32i8zw1472na2ojgxsrl7520s1axmwj','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:57:19.595000'),('ikveau4rpa2bsag2idrmacryr0xd1vb7','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:46:07.102000'),('j1dps41vqyd7eyytd6t2grl8ke6jajkg','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:47:10.763000'),('j5sq7gzbizk7ped1uqqzuwu6xv9ycp6a','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:15:04.055000'),('jf3lrjjtceboswonbaebezt5ion4m1du','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:55:01.876000'),('jhoo79rkujhdxzze1hjfb5vn3bph2noj','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:23:58.961000'),('jpskwtk2cwzhw8yxiqb77u97d4svesn0','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:33:52.352000'),('jqzi378utpquiub87zxxeyxq0w2z8b90','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:14:51.770000'),('jris83m1jigdqhvxzma8gym4s481beml','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:59:44.977000'),('jy1vm8q7iemq6li7eg6y6xu1bxzump37','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:37:46.866000'),('k3s8d67mm1qsu30lss7kal2f7qxrme82','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:38:19.620000'),('k8q4f0u1qudddjzf21ba5gvsp8q2fwhx','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:19:45.719000'),('kx235gpl5yf4qityu7j6d0xexk36nt6t','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:50:25.946000'),('l8owck1gfkhm50ctznedey6wbjt6hf9y','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:26:31.499000'),('lcrom9x2oib4n8hgos75g6oiirqo1haa','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:42:04.784000'),('mo43p00odkso3a53dgj1s6tffpluavi4','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 19:14:11.411000'),('mzh5zd9m5spkm05bvjxuedk43k2zu4ah','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:24:35.076000'),('n13qrdjmi6xbuf8oglzyog6th7dtx19v','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:12:56.232000'),('n1xub3k20ueusjrdiqc3rvpbpvjbiw0r','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:14:09.579000'),('n7qll5vkj9tl25s8fof3phlq7o3dmim7','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:19:36.436000'),('ni185lwthqzbhv2bag4l4lxfx8k1wa9e','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:05:47.868000'),('nlblr2776o0ubscjs1y4r8emkgsmi62r','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:56:46.464000'),('nmc41zwft6grt6ihzygdpjldyl9dgqzm','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:54:05.116000'),('nuvgifbz8p8cb3o5ogj8khok9u4o2rlf','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:35:49.728000'),('opirrpuf999egg1ws899yosjft2ie150','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:06:20.328000'),('optpzhzosnb1o6wyknwexdcsdax6nhpd','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:10:04.763000'),('otnllshgpdd2sk4qed5bp61sa2th2tlk','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:57:10.516000'),('oxztwjlw2tba1okvoj6smsf7s1ifn3s0','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:19:51.186000'),('oy5vxgceh54cspr4n4nsialwed3hh3ct','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:54:35.051000'),('p1dna950l5vgkba0zotsuqz1l7fz6joc','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-01 18:12:27.009000'),('p3cjcxwgn3walsyho04c2u3o5ccjur8v','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:15:04.060000'),('pl4kji6dllkycptp1axzh2ucvhhkucz6','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:06:47.208000'),('pmtgguidl5yf3r6i7tgtzsossgret7pe','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:52:39.523000'),('psym2bg4n9iv5auycfy8aimiq7t1oz5b','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:32:16.812000'),('pthzxmd1nzgwi7i364uz1gkmahojpm5k','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:23:53.019000'),('pwv0swgcsi7ocp9crdnmr2vro7bpgm2k','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:18:36.659000'),('q3wi4vgdbajya5oh397ptk7h8hxrz0df','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:47:27.142000'),('q9sqpsrsp2t7y46xpssf79fhqsymp117','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:53:29.823000'),('qaas688udjdl85txdnhy5y14wmp18rpn','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:50:25.380000'),('qo9psnkhk0sycudg9pmtvc8t1sxct8ix','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:23:55.735000'),('qqskleekrbtzb8yuyslvmerj6avks7on','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:58:14.334000'),('qwricxukfwtw3nhzok1pnir29lgjiwsv','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:36:24.030000'),('rd11buhmx9a2znwf054s4ehxdsq6h960','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:54:32.672000'),('rgmgty7ufwggwx2zy32ebvhgfx40f7ug','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:05:53.233000'),('rktwjgxd4j59clw1cfu7w889jd6jupt0','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 19:22:11.078000'),('rl159hfc4u5244ttjgy3on92g7lhpk6y','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:39:58.443000'),('rxxoy4tpijnyrrqctd3eb69r0jokcbud','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:48:06.788000'),('s89inhrq640nmpfnq9rcz4fta4cbq3c3','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 19:31:54.908000'),('s9ohd7pn3mbxwiqfbqprsadnngro3sef','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:25:31.450000'),('silm75y6820f5bqnlc1w8i7u598rj9vj','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:37:05.990000'),('t100j9kcdfp87hunj56ofl5736awephb','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:40:11.916000'),('t4dw6v8ne5hs8e2cbv3ilnrbyeznnbdx','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:36:52.168000'),('th1is9ssmf5osmqzru8wo9mi1eiyqqo0','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:59:42.527000'),('ty3qjyi03w2iydz15h7wpr9i1d5d1pux','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:53:49.660000'),('uumepv10in0f4vy7r87l0nw3lvzy84gr','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:38:15.253000'),('v09t2t6xd5m8pculn4pdt704o7ksvg3b','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:47:31.982000'),('ve4jrrmwd41ceihepjnz60n037ps9v0q','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:39:01.069000'),('vgqcp59pz4e4dr69jj2k27vyeoi9s6dv','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:30:25.566000'),('vkyckwxjpuiy4r9amehktlty13jxt61l','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-02 10:19:30.447000'),('vohr4aec3aprbmldbvi3uc14vcwceuw4','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 19:31:55.617000'),('wll7nnup9iqqljxfzwtqtptxtqmiacdh','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 15:23:01.731000'),('wrv2ri0fkorp1yo2yvchekgh2yoivhu6','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:20:41.761000'),('x0vhfj9b6g0ihikvmpwtngtra7f9r2cp','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:13:20.665000'),('x51m1ayadg3l0okl100kokc1guyumt7y','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 15:25:32.130000'),('x7o9m9i7xhkzgbc0szlo3a3fy2wab7uz','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:45:36.799000'),('xn0ivhcfua7axa8smpon31lnoy0noc29','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 13:50:17.550000'),('xudac0we3g0iicja1upq7swpr80a54us','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-02 10:23:52.285000'),('ymzaexr2ogfl7kjkkde7dgb9ljjq61xn','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-02 10:32:59.640000'),('ypappv2bwlqru7ont4feh1lsu63ttkg7','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 14:52:23.692000'),('yr8193ltxqa0cntl5b23mjyg17f48b8k','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:50:09.705000'),('ytl1q4d6rh63ev3qwqu2im5mf7ciax6w','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-11 14:30:55.478000'),('zqbts5z8mczni1amwjo5teluridltdug','M2M4OWFlY2VkZGUzMDgwMDJhMDc2MzkwYWVmZWI3NTdkNzg3MzAwYjp7Im9wZW5pZCI6Im9taHJPNHBFNjdOcmcyZ2ZQa01HWFpqaDB2N00iLCJpZF9hdXRob3JpemVkIjp0cnVlfQ==','2020-03-11 15:25:38.212000'),('zu5zimdnl812ahpje3627veevh2hyk27','NjE3MGI5NGQyOWNmNzIwOWM2MzQ4YjNkZGNmMzVmNzJkNWMxYjE5MTp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU1MDNjIn0=','2020-03-10 10:52:08.026000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-12 11:29:48

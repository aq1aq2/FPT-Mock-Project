CREATE TABLE announcement (
 announcementId VARCHAR(10) NOT NULL,
 publishDate DATE NOT NULL,
 endDate DATE NOT NULL,
 titleE VARCHAR(30) NOT NULL,
 ContentE VARCHAR(100) NOT NULL,
 titleM VARCHAR(30) NOT NULL,
 contentM VARCHAR(100) NOT NULL,
 layer VARCHAR(30) NOT NULL
);

ALTER TABLE announcement ADD CONSTRAINT PK_announcement PRIMARY KEY (announcementId);

CREATE UNIQUE INDEX PRIMARY ON ANNOUNCEMENT (announcementId);


CREATE TABLE eguide (
 eGuideId VARCHAR(10) NOT NULL,
 categoryE VARCHAR(30) NOT NULL,
 topicE VARCHAR(30) NOT NULL,
 subTopicE VARCHAR(30) NOT NULL,
 contentE VARCHAR(100) NOT NULL,
 categoryM VARCHAR(30) NOT NULL,
 topicM VARCHAR(30) NOT NULL,
 subTopicM VARCHAR(30) NOT NULL,
 contentM VARCHAR(100) NOT NULL
);

ALTER TABLE eguide ADD CONSTRAINT PK_eguide PRIMARY KEY (eGuideId);

CREATE UNIQUE INDEX PRIMARY ON EGUIDE (eGuideId);


CREATE TABLE eguildeaccesslevel (
 eGuideId VARCHAR(10) NOT NULL,
 userAccessLevel VARCHAR(10) NOT NULL
);

ALTER TABLE eguildeaccesslevel ADD CONSTRAINT PK_eguildeaccesslevel PRIMARY KEY (eGuideId);

CREATE UNIQUE INDEX PRIMARY ON EGUILDEACCESSLEVEL (eGuideId);


CREATE TABLE enews (
 eNewsId VARCHAR(10) NOT NULL,
 publishDate DATE NOT NULL,
 endDate DATE NOT NULL,
 titleE VARCHAR(30) NOT NULL,
 contentE VARCHAR(100) NOT NULL,
 titleM VARCHAR(30) NOT NULL,
 contentM VARCHAR(100) NOT NULL
);

ALTER TABLE enews ADD CONSTRAINT PK_enews PRIMARY KEY (eNewsId);

CREATE UNIQUE INDEX PRIMARY ON ENEWS (eNewsId);


CREATE TABLE faqs (
 faqsId VARCHAR(10) NOT NULL,
 categoryE VARCHAR(30) NOT NULL,
 topicE VARCHAR(30) NOT NULL,
 subTopicE VARCHAR(30) NOT NULL,
 questionE VARCHAR(50) NOT NULL,
 answerE VARCHAR(50) NOT NULL,
 categoryM VARCHAR(30) NOT NULL,
 topicM VARCHAR(30) NOT NULL,
 subTopicM VARCHAR(30) NOT NULL,
 questionM VARCHAR(50) NOT NULL,
 answer VARCHAR(50) NOT NULL
);

ALTER TABLE faqs ADD CONSTRAINT PK_faqs PRIMARY KEY (faqsId);

CREATE UNIQUE INDEX PRIMARY ON FAQS (faqsId);


CREATE TABLE gstforms (
 gstFormId VARCHAR(10) NOT NULL,
 publishDate DATE NOT NULL,
 endDate DATE NOT NULL,
 categoryE VARCHAR(30) NOT NULL,
 titleE VARCHAR(30) NOT NULL,
 formNumberE INT(10) NOT NULL,
 descriptionE VARCHAR(100) NOT NULL,
 categoryM VARCHAR(30) NOT NULL,
 titleM VARCHAR(30) NOT NULL,
 formNumberM INT(10) NOT NULL,
 descriptionM VARCHAR(100) NOT NULL
);

ALTER TABLE gstforms ADD CONSTRAINT PK_gstforms PRIMARY KEY (gstFormId);

CREATE UNIQUE INDEX PRIMARY ON GSTFORMS (gstFormId);


CREATE TABLE gstformsaccesslevel (
 accessLevelId VARCHAR(10) NOT NULL,
 userAccessLevel VARCHAR(10) NOT NULL,
 gstFormId VARCHAR(10)
);

ALTER TABLE gstformsaccesslevel ADD CONSTRAINT PK_gstformsaccesslevel PRIMARY KEY (accessLevelId);

CREATE UNIQUE INDEX PRIMARY ON GSTFORMSACCESSLEVEL (accessLevelId);

CREATE INDEX FK_FORMACCESSLEVEL_IDX ON GSTFORMSACCESSLEVEL (gstFormId);


CREATE TABLE gstformsattachfile (
 attachId VARCHAR(10) NOT NULL,
 path VARCHAR(300),
 gstFormId VARCHAR(10)
);

ALTER TABLE gstformsattachfile ADD CONSTRAINT PK_gstformsattachfile PRIMARY KEY (attachId);

CREATE UNIQUE INDEX PRIMARY ON GSTFORMSATTACHFILE (attachId);

CREATE INDEX FK_FORMATTACHFILE_IDX ON GSTFORMSATTACHFILE (gstFormId);


CREATE TABLE gsttemplates (
 gstTemplatesId VARCHAR(10) NOT NULL,
 publishDate DATE NOT NULL,
 endDate DATE NOT NULL,
 categoryE VARCHAR(30) NOT NULL,
 titleE VARCHAR(10) NOT NULL,
 numberE INT(10) NOT NULL,
 descriptionE VARCHAR(100) NOT NULL,
 categoryM VARCHAR(30) NOT NULL,
 titleM VARCHAR(30) NOT NULL,
 numberM INT(10) NOT NULL,
 descriptionM VARCHAR(100) NOT NULL
);

ALTER TABLE gsttemplates ADD CONSTRAINT PK_gsttemplates PRIMARY KEY (gstTemplatesId);

CREATE UNIQUE INDEX PRIMARY ON GSTTEMPLATES (gstTemplatesId);


CREATE TABLE gsttemplatesaccesslevel (
 accessLevelId VARCHAR(10) NOT NULL,
 userAccessLevel VARCHAR(10) NOT NULL,
 gstTemplatesId VARCHAR(10)
);

ALTER TABLE gsttemplatesaccesslevel ADD CONSTRAINT PK_gsttemplatesaccesslevel PRIMARY KEY (accessLevelId);

CREATE UNIQUE INDEX PRIMARY ON GSTTEMPLATESACCESSLEVEL (accessLevelId);

CREATE INDEX FK_ACCESSLEVEL_IDX ON GSTTEMPLATESACCESSLEVEL (gstTemplatesId);


CREATE TABLE gsttemplatesattachfile (
 attachId VARCHAR(10) NOT NULL,
 path VARCHAR(300),
 gstTemplatesId VARCHAR(10)
);

ALTER TABLE gsttemplatesattachfile ADD CONSTRAINT PK_gsttemplatesattachfile PRIMARY KEY (attachId);

CREATE UNIQUE INDEX PRIMARY ON GSTTEMPLATESATTACHFILE (attachId);

CREATE INDEX FK_ATTACHID_IDX ON GSTTEMPLATESATTACHFILE (gstTemplatesId);


CREATE TABLE user (
 account VARCHAR(10) NOT NULL,
 question VARCHAR(50) NOT NULL,
 answer VARCHAR(50) NOT NULL
);

ALTER TABLE user ADD CONSTRAINT PK_user PRIMARY KEY (account);

CREATE UNIQUE INDEX PRIMARY ON USER (account);


CREATE TABLE userdetail (
 account VARCHAR(10) NOT NULL,
 password VARCHAR(8) NOT NULL,
 dateAvailable DATE NOT NULL
);

ALTER TABLE userdetail ADD CONSTRAINT PK_userdetail PRIMARY KEY (account);

CREATE UNIQUE INDEX PRIMARY ON USERDETAIL (account);


ALTER TABLE eguildeaccesslevel ADD CONSTRAINT FK_eguildeaccesslevel_0 FOREIGN KEY (eGuideId) REFERENCES eguide (eGuideId);


ALTER TABLE gstformsaccesslevel ADD CONSTRAINT FK_gstformsaccesslevel_0 FOREIGN KEY (gstFormId) REFERENCES gstforms (gstFormId);


ALTER TABLE gstformsattachfile ADD CONSTRAINT FK_gstformsattachfile_0 FOREIGN KEY (gstFormId) REFERENCES gstforms (gstFormId);


ALTER TABLE gsttemplatesaccesslevel ADD CONSTRAINT FK_gsttemplatesaccesslevel_0 FOREIGN KEY (gstTemplatesId) REFERENCES gsttemplates (gstTemplatesId);


ALTER TABLE gsttemplatesattachfile ADD CONSTRAINT FK_gsttemplatesattachfile_0 FOREIGN KEY (gstTemplatesId) REFERENCES gsttemplates (gstTemplatesId);


ALTER TABLE userdetail ADD CONSTRAINT FK_userdetail_0 FOREIGN KEY (account) REFERENCES user (account);



-- ------------------
-- INSERT DATABASE 
-- ------------------

-- EGUIDE
INSERT INTO setportal.eguide (categoryE, topicE, subTopicE, contentE, categoryM, topicM, subTopicM, contentM) 
VALUES ('categoryE 1', 'topicE1', 'subTopicE1', 'contentE1', 'categoryM1', 'topicM1', 'subTopicM1', 'contentM1');
INSERT INTO setportal.eguide (categoryE, topicE, subTopicE, contentE, categoryM, topicM, subTopicM, contentM) 
VALUES ('categoryE 2', 'topicE2', 'subTopicE2', 'contentE2', 'categoryM2', 'topicM2', 'subTopicM2', 'contentM2');
INSERT INTO setportal.eguide (categoryE, topicE, subTopicE, contentE, categoryM, topicM, subTopicM, contentM) 
VALUES ('categoryE 3', 'topicE3', 'subTopicE3', 'contentE3', 'categoryM3', 'topicM3', 'subTopicM3', 'contentM3');
INSERT INTO setportal.eguide (categoryE, topicE, subTopicE, contentE, categoryM, topicM, subTopicM, contentM) 
VALUES ('categoryE 4', 'topicE4', 'subTopicE4', 'contentE4', 'categoryM4', 'topicM4', 'subTopicM4', 'contentM4');
INSERT INTO setportal.eguide (categoryE, topicE, subTopicE, contentE, categoryM, topicM, subTopicM, contentM) 
VALUES ('categoryE 5', 'topicE5', 'subTopicE5', 'contentE5', 'categoryM5', 'topicM5', 'subTopicM5', 'contentM5');

-- EGUIDE ACCESS LEVEL
INSERT INTO setportal.eguideaccesslevel (userAccessLevel) 
VALUES ('Level 1');
INSERT INTO setportal.eguideaccesslevel (userAccessLevel) 
VALUES ('Level 2');
INSERT INTO setportal.eguideaccesslevel (userAccessLevel) 
VALUES ('Level 3');
INSERT INTO setportal.eguideaccesslevel (userAccessLevel) 
VALUES ('Level 4');
INSERT INTO setportal.eguideaccesslevel (userAccessLevel) 
VALUES ('Level 5');

-- GST FORM
INSERT INTO setportal.gstforms (publishDate, endDate, categoryE, titleE, formNumberE, descriptionE, categoryM, titleM, formNumberM, descriptionM) 
VALUES ('2015-6-1', '2015-6-30', 'categoryE1', 'titleE1', 0001, 'descriptionE1', 'categoryM1', 'titleM1', 0001, 'descriptionM1');
INSERT INTO setportal.gstforms (publishDate, endDate, categoryE, titleE, formNumberE, descriptionE, categoryM, titleM, formNumberM, descriptionM) 
VALUES ('2015-6-2', '2015-6-30', 'categoryE2', 'titleE2', 0002, 'descriptionE2', 'categoryM2', 'titleM2', 0002, 'descriptionM2');
INSERT INTO setportal.gstforms (publishDate, endDate, categoryE, titleE, formNumberE, descriptionE, categoryM, titleM, formNumberM, descriptionM) 
VALUES ('2015-6-3', '2015-6-30', 'categoryE3', 'titleE3', 0003, 'descriptionE3', 'categoryM3', 'titleM3', 0003, 'descriptionM3');
INSERT INTO setportal.gstforms (publishDate, endDate, categoryE, titleE, formNumberE, descriptionE, categoryM, titleM, formNumberM, descriptionM) 
VALUES ('2015-6-4', '2015-6-30', 'categoryE4', 'titleE4', 0004, 'descriptionE4', 'categoryM4', 'titleM4', 0004, 'descriptionM4');
INSERT INTO setportal.gstforms (publishDate, endDate, categoryE, titleE, formNumberE, descriptionE, categoryM, titleM, formNumberM, descriptionM) 
VALUES ('2015-6-5', '2015-6-30', 'categoryE5', 'titleE5', 0005, 'descriptionE5', 'categoryM5', 'titleM5', 0005, 'descriptionM5');

-- GST FORM ACCESS LEVEL
INSERT INTO setportal.gstformsaccesslevel (gstFormId, userAccessLevel) 
VALUES (1, 'Level 1');
INSERT INTO setportal.gstformsaccesslevel (gstFormId, userAccessLevel) 
VALUES (2, 'Level 2');
INSERT INTO setportal.gstformsaccesslevel (gstFormId, userAccessLevel) 
VALUES (3, 'Level 3');
INSERT INTO setportal.gstformsaccesslevel (gstFormId, userAccessLevel) 
VALUES (4, 'Level 4');
INSERT INTO setportal.gstformsaccesslevel (gstFormId, userAccessLevel) 
VALUES (5, 'Level 5');

-- GST FORM ATTACH FILE
INSERT INTO setportal.gstformsattachfile (gstFormId, path) 
VALUES (1, 'path1');
INSERT INTO setportal.gstformsattachfile (gstFormId, path) 
VALUES (2, 'path2');
INSERT INTO setportal.gstformsattachfile (gstFormId, path) 
VALUES (3, 'path3');
INSERT INTO setportal.gstformsattachfile (gstFormId, path) 
VALUES (4, 'path4');
INSERT INTO setportal.gstformsattachfile (gstFormId, path) 
VALUES (5, 'path5');

-- USER
INSERT INTO setportal.user (account, question, answer) 
VALUES ('Account 1', 'Question 1', 'Answer 1');
INSERT INTO setportal.user (account, question, answer) 
VALUES ('Account 2', 'Question 2', 'Answer 2');
INSERT INTO setportal.user (account, question, answer) 
VALUES ('Account 3', 'Question 3', 'Answer 3');
INSERT INTO setportal.user (account, question, answer) 
VALUES ('Account 4', 'Question 4', 'Answer 4');
INSERT INTO setportal.user (account, question, answer) 
VALUES ('Account 5', 'Question 5', 'Answer 5');

-- USER DETAIL
INSERT INTO setportal.userdetail (account, password, dateAvailable) 
VALUES ('Account 1', 'PASS0001', '2016-1-1');
INSERT INTO setportal.userdetail (account, password, dateAvailable) 
VALUES ('Account 2', 'PASS0002', '2016-1-1');
INSERT INTO setportal.userdetail (account, password, dateAvailable) 
VALUES ('Account 3', 'PASS0003', '2016-1-1');
INSERT INTO setportal.userdetail (account, password, dateAvailable) 
VALUES ('Account 4', 'PASS0004', '2016-1-1');
INSERT INTO setportal.userdetail (account, password, dateAvailable) 
VALUES ('Account 5', 'PASS0005', '2016-1-1');

-- 
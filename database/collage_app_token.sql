/*
 Navicat Premium Data Transfer

 Source Server         : PostSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 130003
 Source Host           : localhost:5432
 Source Catalog        : new_collage
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130003
 File Encoding         : 65001

 Date: 30/11/2021 08:26:24
*/


-- ----------------------------
-- Table structure for collage_app_token
-- ----------------------------
DROP TABLE IF EXISTS "public"."collage_app_token";
CREATE TABLE "public"."collage_app_token" (
  "id" int8 NOT NULL DEFAULT nextval('collage_app_tokenimage_id_seq'::regclass),
  "collection_id" int8 NOT NULL,
  "description" varchar(300) COLLATE "pg_catalog"."default",
  "title" text COLLATE "pg_catalog"."default",
  "image" varchar(100) COLLATE "pg_catalog"."default",
  "status" varchar(64) COLLATE "pg_catalog"."default",
  "date" date,
  "token_id" varchar(200) COLLATE "pg_catalog"."default",
  "col_description" varchar(255) COLLATE "pg_catalog"."default",
  "col_image" varchar(255) COLLATE "pg_catalog"."default",
  "col_title" varchar(255) COLLATE "pg_catalog"."default",
  "like" int2 NOT NULL,
  "col_slug" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."collage_app_token"."like" IS '1:collection, 2: token';

-- ----------------------------
-- Records of collage_app_token
-- ----------------------------
INSERT INTO "public"."collage_app_token" VALUES (91, 3, 'sdaf', 'asdf', 'https://ipfs.io/ipfs/QmfGnRftMQTf1Z89VZPMy9NdCvJWKX17XEhwTYpqkGXreW', 'SOLD', '2021-11-01', '2', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (93, 4, 'tatrsd', 'dfsafdsfsaf', 'https://ipfs.io/ipfs/QmfD76SX8mzrwM8KPuWotS8sTJfW14q6Fzf2AePY6iG3WS', 'SOLD', '2021-11-03', '4', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (94, 2, 'asdfsadfsadfsdaf', 'asfsdaf', 'https://ipfs.io/ipfs/QmTvRDCbBnbdWtbFKgpu3efn8US7wgHHwFmFkSwND9Gwjw', 'SOLD', '2021-11-03', '6', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (95, 3, 'Hello, How are you?', 'Test1234', 'https://ipfs.io/ipfs/QmfD76SX8mzrwM8KPuWotS8sTJfW14q6Fzf2AePY6iG3WS', 'SOLD', '2021-11-03', '5', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (96, 4, 'TestDescription', 'TestTitle', 'https://ipfs.io/ipfs/QmTvRDCbBnbdWtbFKgpu3efn8US7wgHHwFmFkSwND9Gwjw', 'SOLD', '2021-11-03', '7', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (97, 1, 'sadfsadf', 'asdf', 'https://ipfs.io/ipfs/QmSHMoCVcA95hk3utegQ8tryWN5tWB2jssAuz7YMznaWNN', 'SOLD', '2021-11-03', '8', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (98, 2, 'THis is test NFT for testing.', 'NFT1', 'https://ipfs.io/ipfs/QmSHMoCVcA95hk3utegQ8tryWN5tWB2jssAuz7YMznaWNN', 'SOLD', '2021-11-03', '9', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (100, 4, 'retew543253425323245', '7865dgfghhh', 'https://ipfs.io/ipfs/QmShQL3BJF7RzhzznSBie4TmoTSQSnPLkDnHnAd6he7pgm', 'SOLD', '2021-11-04', '11', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (101, 1, 'asdfasfsafsdafasdf', 'sadfasf', 'https://ipfs.io/ipfs/QmSHMoCVcA95hk3utegQ8tryWN5tWB2jssAuz7YMznaWNN', 'SOLD', '2021-11-04', '12', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (99, 1, 'sadfdsafsafsdafsafdsafsadfsdfsadfsadfsdafdsafsaduikuhyjksad', '1235Tgest', 'https://ipfs.io/ipfs/QmQvLffkkQQ8PDzCDkaFotF12dPFEHJAWoMiSTgczM7u5A', 'SOLD', '2021-11-04', '10', NULL, NULL, NULL, 2, NULL);
INSERT INTO "public"."collage_app_token" VALUES (105, 1, '', NULL, NULL, NULL, '2021-11-17', NULL, 'Gen 3, the third and final installment of the Gen-Trilogy series, uses word combinations to create unexpected phrases.', 'uploads/S1_n0_0.png', 's1 | what''s in the box?', 1, 's1-whats-in-the-box');
INSERT INTO "public"."collage_app_token" VALUES (106, 2, NULL, NULL, NULL, NULL, '2021-11-02', NULL, 'for fun', 'uploads/proba24.png', 's2 | cosmic ride', 1, 's2-cosmic-ride');
INSERT INTO "public"."collage_app_token" VALUES (107, 3, NULL, NULL, NULL, NULL, '2021-11-03', NULL, 'grgrgrg', 'uploads/proba4_6KxCPoz.png', 's3 | sALVADOR', 1, 's3-salvador');
INSERT INTO "public"."collage_app_token" VALUES (108, 4, NULL, NULL, NULL, NULL, '2021-11-04', NULL, 'wow', 'uploads/s4_1.png', 's4 | wow', 1, 's4-generator');
INSERT INTO "public"."collage_app_token" VALUES (92, 2, 'fasfsafsafasdf', 'fasdfsafas', 'https://ipfs.io/ipfs/QmfGnRftMQTf1Z89VZPMy9NdCvJWKX17XEhwTYpqkGXreW', 'SOLD', '2021-11-03', '3', NULL, NULL, NULL, 2, NULL);

-- ----------------------------
-- Primary Key structure for table collage_app_token
-- ----------------------------
ALTER TABLE "public"."collage_app_token" ADD CONSTRAINT "collage_app_tokenimage_pkey" PRIMARY KEY ("id");

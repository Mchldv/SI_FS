/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     3/11/2018 7:38:56 PM                         */
/*==============================================================*/


drop table if exists ABSENSI;

drop table if exists CG;

drop table if exists CGM;

drop table if exists EVENT;

drop table if exists IBADAH;

drop table if exists JEMAAT;

drop table if exists KEHADIRAN_CG;

drop table if exists KEHADIRAN_IBADAH;

drop table if exists LIST_MUL;

drop table if exists LIST_UT;

drop table if exists LIST_WT;

drop table if exists MODUL;

drop table if exists MULTIMEDIA;

drop table if exists PANITIA;

drop table if exists RELATIONSHIP_20;

drop table if exists RELATIONSHIP_27;

drop table if exists ROLE;

drop table if exists UT;

drop table if exists WT;

/*==============================================================*/
/* Table: ABSENSI                                               */
/*==============================================================*/
create table ABSENSI
(
   ID_EVENT             char(10) not null,
   _ID_JEMAAT           int not null,
   primary key (ID_EVENT, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: CG                                                    */
/*==============================================================*/
create table CG
(
   ID_CG                int not null,
   NAMA_CG              varchar(0),
   primary key (ID_CG)
);

/*==============================================================*/
/* Table: CGM                                                   */
/*==============================================================*/
create table CGM
(
   _ID_JEMAAT           int,
   ID_CG                int,
   ID_MEMBER            int not null,
   ROLE                 char(10),
   primary key (ID_MEMBER)
);

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   ID_EVENT             char(10) not null,
   NAMA_EVENT           varchar(20) not null,
   TGL_EVENT            datetime,
   primary key (ID_EVENT)
);

/*==============================================================*/
/* Table: IBADAH                                                */
/*==============================================================*/
create table IBADAH
(
   ID_IBADAH            int not null,
   WT_ID_TEAM           int,
   UT_ID_TEAM           int,
   MUL_ID_TEAM          int,
   TEMA_IBADAH          varchar(30),
   PEMBICARA            varchar(20),
   TGL_IBADAH           datetime,
   primary key (ID_IBADAH)
);

/*==============================================================*/
/* Table: JEMAAT                                                */
/*==============================================================*/
create table JEMAAT
(
   _ID_JEMAAT           int not null,
   NAMA_JEMAAT          varchar(20),
   TGL_LAHIR_JEMAAT     varchar(15),
   ALAMAT_JEMAAT        varchar(20),
   NO_HP_JEMAAT         int,
   EMAIL_JEMAAT         varbinary(30),
   primary key (_ID_JEMAAT)
);

/*==============================================================*/
/* Table: KEHADIRAN_CG                                          */
/*==============================================================*/
create table KEHADIRAN_CG
(
   ID_MEMBER            int,
   TGL_KEHADIRAN        datetime
);

/*==============================================================*/
/* Table: KEHADIRAN_IBADAH                                      */
/*==============================================================*/
create table KEHADIRAN_IBADAH
(
   ID_KEHADIRAN         int not null,
   ID_IBADAH            int,
   _ID_JEMAAT           int,
   primary key (ID_KEHADIRAN)
);

/*==============================================================*/
/* Table: LIST_MUL                                              */
/*==============================================================*/
create table LIST_MUL
(
   ID_LIST_MUL          int,
   MUL_ID_TEAM          int not null,
   _ID_JEMAAT           int not null,
   primary key (MUL_ID_TEAM, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: LIST_UT                                               */
/*==============================================================*/
create table LIST_UT
(
   ID_LIST_UT           int,
   UT_ID_TEAM           int not null,
   _ID_JEMAAT           int not null,
   primary key (UT_ID_TEAM, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: LIST_WT                                               */
/*==============================================================*/
create table LIST_WT
(
   ID_LIST_WT           int,
   WT_ID_TEAM           int not null,
   _ID_JEMAAT           int not null,
   BAGIAN_PELAYANAN     varbinary(10),
   primary key (WT_ID_TEAM, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: MODUL                                                 */
/*==============================================================*/
create table MODUL
(
   ID_MODUL             int not null,
   NAMA_MODUL           text,
   primary key (ID_MODUL)
);

/*==============================================================*/
/* Table: MULTIMEDIA                                            */
/*==============================================================*/
create table MULTIMEDIA
(
   MUL_ID_TEAM          int not null,
   primary key (MUL_ID_TEAM)
);

/*==============================================================*/
/* Table: PANITIA                                               */
/*==============================================================*/
create table PANITIA
(
   ID_EVENT             char(10) not null,
   _ID_JEMAAT           int not null,
   primary key (ID_EVENT, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: RELATIONSHIP_20                                       */
/*==============================================================*/
create table RELATIONSHIP_20
(
   ID_ROLE              int not null,
   _ID_JEMAAT           int not null,
   primary key (ID_ROLE, _ID_JEMAAT)
);

/*==============================================================*/
/* Table: RELATIONSHIP_27                                       */
/*==============================================================*/
create table RELATIONSHIP_27
(
   ID_ROLE              int not null,
   ID_MODUL             char(10) not null,
   primary key (ID_ROLE, ID_MODUL)
);

/*==============================================================*/
/* Table: ROLE                                                  */
/*==============================================================*/
create table ROLE
(
   ID_ROLE              int not null,
   NAMA_ROLE            text,
   primary key (ID_ROLE)
);

/*==============================================================*/
/* Table: UT                                                    */
/*==============================================================*/
create table UT
(
   UT_ID_TEAM           int not null,
   primary key (UT_ID_TEAM)
);

/*==============================================================*/
/* Table: WT                                                    */
/*==============================================================*/
create table WT
(
   WT_ID_TEAM           int not null,
   primary key (WT_ID_TEAM)
);

alter table ABSENSI add constraint FK_RELATIONSHIP_21 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table ABSENSI add constraint FK_RELATIONSHIP_22 foreign key (ID_EVENT)
      references EVENT (ID_EVENT) on delete restrict on update restrict;

alter table CGM add constraint FK_MEMILIKI_2 foreign key (ID_CG)
      references CG (ID_CG) on delete restrict on update restrict;

alter table CGM add constraint FK_RELATIONSHIP_4 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table IBADAH add constraint FK_DIJADWALKAN foreign key (UT_ID_TEAM)
      references UT (UT_ID_TEAM) on delete restrict on update restrict;

alter table IBADAH add constraint FK_DIJADWALKAN_DALAM foreign key (WT_ID_TEAM)
      references WT (WT_ID_TEAM) on delete restrict on update restrict;

alter table IBADAH add constraint FK_RELATIONSHIP_19 foreign key (MUL_ID_TEAM)
      references MULTIMEDIA (MUL_ID_TEAM) on delete restrict on update restrict;

alter table KEHADIRAN_CG add constraint FK_MENGHADIRI foreign key (ID_MEMBER)
      references CGM (ID_MEMBER) on delete restrict on update restrict;

alter table KEHADIRAN_IBADAH add constraint FK_DATANG foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table KEHADIRAN_IBADAH add constraint FK_MENJALANKAN foreign key (ID_IBADAH)
      references IBADAH (ID_IBADAH) on delete restrict on update restrict;

alter table LIST_MUL add constraint FK_RELATIONSHIP_17 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table LIST_MUL add constraint FK_RELATIONSHIP_18 foreign key (MUL_ID_TEAM)
      references MULTIMEDIA (MUL_ID_TEAM) on delete restrict on update restrict;

alter table LIST_UT add constraint FK_RELATIONSHIP_11 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table LIST_UT add constraint FK_RELATIONSHIP_12 foreign key (UT_ID_TEAM)
      references UT (UT_ID_TEAM) on delete restrict on update restrict;

alter table LIST_WT add constraint FK_RELATIONSHIP_14 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table LIST_WT add constraint FK_RELATIONSHIP_15 foreign key (WT_ID_TEAM)
      references WT (WT_ID_TEAM) on delete restrict on update restrict;

alter table PANITIA add constraint FK_RELATIONSHIP_23 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table PANITIA add constraint FK_RELATIONSHIP_24 foreign key (ID_EVENT)
      references EVENT (ID_EVENT) on delete restrict on update restrict;

alter table RELATIONSHIP_20 add constraint FK_RELATIONSHIP_25 foreign key (_ID_JEMAAT)
      references JEMAAT (_ID_JEMAAT) on delete restrict on update restrict;

alter table RELATIONSHIP_20 add constraint FK_RELATIONSHIP_26 foreign key (ID_ROLE)
      references ROLE (ID_ROLE) on delete restrict on update restrict;

alter table RELATIONSHIP_27 add constraint FK_RELATIONSHIP_28 foreign key (ID_MODUL)
      references MODUL (ID_MODUL) on delete restrict on update restrict;

alter table RELATIONSHIP_27 add constraint FK_RELATIONSHIP_29 foreign key (ID_ROLE)
      references ROLE (ID_ROLE) on delete restrict on update restrict;


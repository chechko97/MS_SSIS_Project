/*==============================================================*/
/* Table: DEPARTMENT                                            */
/*==============================================================*/
create table DEPARTMENT (
   DEPRATMENT_ID        int                  not null,
   NAME                 varchar(100)         not null,
   constraint PK_DEPARTMENT primary key (DEPRATMENT_ID)
)
go

/*==============================================================*/
/* Table: HR_FACT1                                              */
/*==============================================================*/
create table HR_FACT1 (
   DEPRATMENT_ID        int                  null,
   TIME_ID              int                  null,
   SALARED_TYPE_ID      int                  null,
   EMPLCOUNT            int                  null,
   VACATIONHOURS        int                  null,
   SICKLEAVEHOURS       int                  null
)
go

/*==============================================================*/
/* Table: SALARIEDTYPE                                          */
/*==============================================================*/
create table SALARIEDTYPE (
   SALARED_TYPE_ID      int                  not null,
   NAME                 varchar(100)         null,
   constraint PK_SALARIEDTYPE primary key (SALARED_TYPE_ID)
)
go

/*==============================================================*/
/* Table: TIME                                                  */
/*==============================================================*/
create table TIME (
   TIME_ID              int                  not null,
   YEAR                 int                  not null,
   MONTH                int                  not null,
   constraint PK_TIME primary key (TIME_ID)
)
go

alter table HR_FACT1
   add constraint FK_HR_FACT1_REFERENCE_DEPARTME foreign key (DEPRATMENT_ID)
      references DEPARTMENT (DEPRATMENT_ID)
go

alter table HR_FACT1
   add constraint FK_HR_FACT1_REFERENCE_TIME foreign key (TIME_ID)
      references TIME (TIME_ID)
go

alter table HR_FACT1
   add constraint FK_HR_FACT1_REFERENCE_SALARIED foreign key (SALARED_TYPE_ID)
      references SALARIEDTYPE (SALARED_TYPE_ID)
go


create table teacher (
  id         bigint not null auto_increment,
  name     varchar(255),
  subject varchar(255),
  primary key (id)
) engine = InnoDB;

create table student (
  id         bigint not null auto_increment,
  name     varchar(255),
  teacher_id bigint,
  primary key (id),
  foreign key (teacher_id) references teacher (id)
) engine = InnoDB;

insert into teacher (name, subject) values ("선생님1", "과학");
insert into teacher (name, subject) values ("선생님2", "수학");
insert into teacher (name, subject) values ("선생님3", "영어");

insert into student (name, teacher_id) values ("학생1", 1);
insert into student (name, teacher_id) values ("학생2", 1);
insert into student (name, teacher_id) values ("학생3", 2);
insert into student (name, teacher_id) values ("학생4", 2);
insert into student (name, teacher_id) values ("학생5", 3);
insert into student (name, teacher_id) values ("학생6", 3);

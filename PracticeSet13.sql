/*Create Table Name 'Migration' & 'Sea-lion'*/

show databases;
use uniquedatabases;

/* Create */

create table SeaLion(Id int primary key,
Name varchar(50)
);

/*Insert Into values */
insert into SeaLion values(11728,'Spot'),
(11729,'Tiger'),
(11732,'Mabel'),
(11734,'Rick'),
(11790,'Jolee');
select * from SeaLion;
alter table SeaLion
rename column  Lion_id to Id;



create table Migration(Id int primary key,
Distance int,
Days int
);

insert into Migration values(10484,1000,107),
(11728,1531,56),
(11729,1370,37),
(11732,1622,62),
(11734,1491,58),
(11765,2723,82),
(11736,1571,52),
(11737,1957,92);
select * from Migration;
alter table Migration
rename column  Migration_id to id;

/*Perform All of the JOIN Operation */

/* JOIN FULL */
     select *
     from SeaLion
     join Migration
     on SeaLion.Id=Migration.Id;
     /* Yeh Query degi ki jis id SAME HAI BOTH TABLE's Me 
      dono me 5 id's same hai.
     */
     
    
/* LEFT JOIN / LEFT OUTER JOIN */
   select *
   from SeaLion
   left join Migration
  on SeaLion.Id=Migration.Id;
  /*Yeh QUERY Degi ki  all record that from left matlab sare joh left me honge aur matches equals to R.H.S Rows.  */
  


/* RIGHT /RIGHT OUTER JOIN */
  select *
   from SeaLion
   right join  Migration
  on SeaLion.Id=Migration.Id;
/* Yeh return karegi joh all row are equal to matching condition on RIGHT JOIN agar kuch nhi hai rows left me toh udhr by default  'null' hoga  */
  
/* FULL/ FULL OUTER JOIN */
  desc SeaLion;
  
   select *
   from SeaLion
   full join Migration
  on SeaLion.Id=Migration.id;

  /* CROSSS JOIN */ 

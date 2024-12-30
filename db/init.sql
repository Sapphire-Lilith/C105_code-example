-- MySQL init script
create table if not exists events (
	`id` binary(16) primary key,
	`name` varchar(256) not null,
	`time` timestamp not null
);

create table if not exists events_subscribers (
	`eid` binary(16) not null, -- event id
	`sid` varchar(32) not null, -- subscriber id
	primary key (`eid`, `sid`)
);

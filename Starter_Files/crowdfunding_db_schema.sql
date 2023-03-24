Drop Table category

create table category (
	category_id varchar not null primary key,
	category varchar not null
);

Drop Table subcategory

create table subcategory (
	subcategory_id varchar not null primary key,
	subcategory varchar not null
);

Drop Table contacts

create table contacts (
	contact_id int not null primary key,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null
);

Drop Table campaign

create table campaign (
	cf_id int not null primary key,
	contact_id int not null,
	company_name varchar not null,
	description varchar not null,
	goal float not null,
	pledged float not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launch_date date not null,
	end_date date not null,
	category_id varchar not null,
	subcategory_id varchar not null,
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);
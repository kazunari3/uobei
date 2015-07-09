
/* Drop Tables */

DROP TABLE IF EXISTS order_detail_table;
DROP TABLE IF EXISTS menu_table;
DROP TABLE IF EXISTS order_table;




/* Create Tables */

CREATE TABLE menu_table
(
	id int NOT NULL,
	name text NOT NULL,
	cost int NOT NULL,
	image text NOT NULL,
	PRIMARY KEY (id)
) WITHOUT OIDS;


CREATE TABLE order_detail_table
(
	fk_order_id int NOT NULL,
	fk_menu_id int NOT NULL,
	lot int NOT NULL,
	PRIMARY KEY (fk_order_id, fk_menu_id)
) WITHOUT OIDS;


CREATE TABLE order_table
(
	id int NOT NULL,
	order_time timestamp NOT NULL,
	PRIMARY KEY (id)
) WITHOUT OIDS;



/* Create Foreign Keys */

ALTER TABLE order_detail_table
	ADD FOREIGN KEY (fk_menu_id)
	REFERENCES menu_table (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE order_detail_table
	ADD FOREIGN KEY (fk_order_id)
	REFERENCES order_table (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;




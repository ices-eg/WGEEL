-------------------------------------
-- script for updating the database
-- created during WKDATAWGEEL Rennes
-- Cedric Briand Laurent Beaulaton
------------------------------------

create schema ref -- refential to hold dictionnay
create schema data -- this schema will hold the data


-------------------------------------
-- Dictionnary tables
-------------------------------------
--------------------------------------------------
-- Reference table of typeseries names as used by WGEEL
-- (this refererence has been developped and used by WGEEL)
-- we have three type so far, yellow eel standing stock, silver eel escapement series, and glass eel recruitment series
---------------------------------------------------
CREATE TABLE ref.tr_typeseries_typ
(
  typ_id serial NOT NULL,
  typ_name character varying(40),
  typ_description text,
  CONSTRAINT typ_pkey PRIMARY KEY (typ_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ref.tr_typeseries_typ
  OWNER TO postgres;
COMMENT ON TABLE ref.tr_dataclass_class
  IS 'table containing the type of series (recruitment, yellow eel standing stock, silver eel to be used by ICES-EIFAAC-GFCM wgeel,
  note that recruitment can be made of different life stages';
  
--------------------------------------------------
-- Reference table of lifestage name for eel 
-- (this refererence has been developped and used by WGEEL)
---------------------------------------------------
CREATE TABLE ref.tr_lifestage_lfs
(
  lfs_name character varying(30) NOT NULL,
  lfs_definition text,
  CONSTRAINT lfs_pk PRIMARY KEY (lfs_name)
);
ALTER TABLE ref.tr_lifestage_lfs
  OWNER TO postgres;

--------------------------------------------------
-- Reference table of countries, includes the order of the country as diplayed by wgeel
-- If transfered to ICES the country ordre will have to be stored somewhere else and loaded
-- this follows ISO_3166
-- todo fill in the geom for geometry
---------------------------------------------------
CREATE TABLE ref.tr_country_cou 
(
  cou_code character varying(2) PRIMARY KEY,
  cou_country text not null,
  cou_order integer not null,
  geom geometry
)
WITH (
  OIDS=TRUE
);
ALTER TABLE ref.tr_country_cou 
  OWNER TO postgres;

--------------------------------------------------
-- Reference table of EEL management units, name for eel (as used by WGEEL)
--------------------------------------------------- 



--------------------------------------------------
-- Reference table of station
-- based on station dictionnay (http://ices.dk/marine-data/tools/Pages/Station-dictionary.aspx)
--------------------------------------------------- 

CREATE TABLE ref.tr_station(
	"tblCodeID" DOUBLE PRECISION PRIMARY KEY,
	"Station_Code" DOUBLE PRECISION,
	"Country" TEXT,
	"Organisation" TEXT,
	"Station_Name" TEXT,
	"WLTYP" TEXT, -- Water and land station types 
	"Lat" DOUBLE PR0ECISION,
	"Lon" DOUBLE PRECISION,
	"StartYear" DOUBLE PRECISION,
	"EndYear" DOUBLE PRECISION,
	"PURPM" TEXT, -- Purpose of monitoring
	"Notes" TEXT
);

COMMENT ON COLUMN ref.tr_station."Country" IS 'country responsible of the data collection ?';
COMMENT ON COLUMN ref.tr_station."WLTYP" IS 'Water and land station types ';
COMMENT ON COLUMN ref.tr_station."PURPM" IS 'Purpose of monitoring';


--------------------------------------------------
-- Reference table of sea
-- this was taken from the wise layer as ICES seas do not cover the mediterranean
-- It is consistent with the emu table which was built from the wise layer...
-- this is used to later attribute recruitment series to the two series 'Elsewhere Europe' and 'North Sea'
-- or build spatial analyses such as in ICES_wgeel_2008 (Hamburg)
--------------------------------------------------- 
create table ref.tr_sea_sea (
sea_o character varying(50) not null,
sea_s character varying(50) not null,
sea_code character varying(2),
CONSTRAINT c_pk_sea PRIMARY KEY(sea_code)
)
WITH (
  OIDS=TRUE
);
ALTER TABLE ref.tr_sea_sea
  OWNER TO postgres;

--------------------------------------------------
-- Reference table for quality
-- TODO describe this.... and fill in a table appropriate according
-- to ICES standards
---------------------------------------------------

create table ref.tr_quality_qal (
qal_id,
qal_level,
qal_text);

--------------------------------------------------
-- Table containing the series
-- this table contains geographical informations and comments on the series
--------------------------------------------------- 

create table data.t_series_ser (
ser_id serial,
ser_order integer not null,
ser_nameshort character varying(4),
ser_namelong character varying(50),
ser_typ_id integer,
ser_comment text,
ser_unit character varying(12),
ser_lfs_id integer,
ser_riv_id integer,
ser_emu_name_short character varying(7),
ser_cou_code character varying(2),
ser_sea_code character varying(2),
ser_tblCodeID integer,
ser_x numeric,
ser_y numeric,
geom,
CONSTRAINT enforce_dims_the_geom CHECK (st_ndims(geom) = 2),
CONSTRAINT enforce_srid_the_geom CHECK (st_srid(geom) = 3035)
CONSTRAINT c_fk_cou_code FOREIGN KEY   REFERENCES ref.tr_country_cou (cou_code)
      ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT c_fk_sea_code FOREIGN KEY REFERENCES tr_sea_sea(sea_code) ON UPDATE CASCADE;
--------------------------------
-- this table holds the main information
----------------------------------


create table data.t_data_dat (

  dat_id serial NOT NULL,
  dat_value real,
  dat_ser_id integer NOT NULL, -- foreign key to join t_series_ser
  dat_year integer,
  dat_stage character varying(30),
  dat_comment text,
  dat_effort numeric,
  dat_eft_id integer,
  CONSTRAINT t_data_dat_pkey PRIMARY KEY (dat_id),
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT c_fk_ser_id FOREIGN KEY (dat_ser_id)
      REFERENCES t_serie_ser (ser_id)
      ON UPDATE CASCADE ON DELETE NO ACTION,
  CONSTRAINT c_fk_eft_id FOREIGN KEY (dat_eft_id)
      REFERENCES ref.tr_efforttype_eft (eft_id)
      ON UPDATE CASCADE ON DELETE NO ACTION,
  CONSTRAINT c_ck_dat_effort CHECK (dat_effort IS NULL AND dat_eft_id IS NULL OR dat_effort IS NOT NULL AND dat_eft_id IS NOT NULL)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.t_data_dat
  OWNER TO postgres;


select *
    from avtoowners
    where mark ilike 'Audi';

ALTER TABLE avtoowners
ADD vendor_id int;

update avtoowners
    set vendor_id = 4
    where id in (4,5);

update avtoowners
    set vendor_id = 2
    where id = 2;

update avtoowners
    set vendor_id = 1
    where id = 1;

update avtoowners
    set vendor_id = 3
    where id = 3;

select avtoowners.id, vendor.venname as vendor,surname,owner_name,tel_number,mark, avto_number
    from avtoowners
        left join vendor
            on avtoowners.vendor_id=vendor.id;

select count(*)
    from avtoowners
    where avto_year=2017;

select sum(avto_cost)
    from avtoowners
    where avto_year > 2015;

select min(avto_cost) as "Min Cost", max(avto_cost) as "Max Cost"
    from avtoowners;

select *
    from avtoowners
        inner join vendor
            on avtoowners.vendor_id=vendor.id
    where vendor.id=1 or vendor.id=2;
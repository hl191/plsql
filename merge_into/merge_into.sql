merge into infop_stammdaten.land
using (
    select l.id, c.codewert
    from infop_stammdaten.land l
             join infop_stammdaten.code c on l.ZEITZONE_CODE_ID = c.id
) land_zeitzone
on (land.id = land_zeitzone.id)
when matched then
    update
    set land.zeitzone = land_zeitzone.codewert;
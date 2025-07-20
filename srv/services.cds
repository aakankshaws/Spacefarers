using { sap.spacefarer as my } from '../db/schema';

service SpacefarerService { 
    entity Spacefarer as projection on my.Spacefarer;
    entity position    as projection on my.Position;
    entity department as projection on my.Department;
}
annotate SpacefarerService.Spacefarer with @odata.draft.enabled;

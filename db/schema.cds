using { managed, sap.common.CodeList } from '@sap/cds/common';
namespace sap.spacefarer;

entity Spacefarer :  managed 
{
    key ID                     : UUID;
    name                       : String;
    stardustCollection         : Integer;
    wormholeNavigationSkill    : Association to SkillList;
    originPlanet               : String;
    spacesuitColor             : String;
    department                 : Association to Department;
    position                   : Association to Position;
    createdBy                  : type of managed:createdBy;
    email                      : EMailAddress;
};
entity SkillList: CodeList {
    key code: String enum {
    high = 'H';
    medium = 'M'; 
    low = 'L'; 
};
criticality : Integer;
};
entity Department {
  key ID    : UUID;
  name      : String;
};

entity Position  {
  key ID    : UUID;
  title     : String;
  level     : String;
};

type EMailAddress : String;
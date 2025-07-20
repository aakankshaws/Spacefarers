using SpacefarerService as service from '../../srv/services';
annotate service.Spacefarer with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>StardustCollection}',
                Value : stardustCollection,
            },
            {
                $Type : 'UI.DataField',
                Label : 'originPlanet',
                Value : originPlanet,
            },
            {
                $Type : 'UI.DataField',
                Label : 'spacesuitColor',
                Value : spacesuitColor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>WormholeNavigationSkill}',
                Value : wormholeNavigationSkill_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Profile}',
            ID : 'i18nProfile',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet1',
                    Label : '{i18n>GeneralInformation}',
                    Target : '@UI.FieldGroup#GeneratedGroup',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Details}',
                    ID : 'i18nDetails',
                    Target : '@UI.FieldGroup#i18nDetails',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Spacefarer}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>StardustCollection}',
            Value : stardustCollection,
        },
        {
            $Type : 'UI.DataField',
            Value : spacesuitColor,
        },
        {
            $Type : 'UI.DataField',
            Value : wormholeNavigationSkill_code,
            Criticality : wormholeNavigationSkill.criticality,
            CriticalityRepresentation : #WithoutIcon,
        },
    ],
    UI.SelectionFields : [
        spacesuitColor,
        wormholeNavigationSkill_code,
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : wormholeNavigationSkill.descr,
        },
    },
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.Spacefarer with {
    spacesuitColor @(
        Common.Label : '{i18n>SpacesuitColor}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Spacefarer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : spacesuitColor,
                    ValueListProperty : 'spacesuitColor',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Spacefarer with {
    stardustCollection @(
        Common.Label : 'stardustCollection',
        )
};

annotate service.Spacefarer with {
    wormholeNavigationSkill @(
        Common.Label : '{i18n>WormholeNavigationSkill}',
        Common.ValueListWithFixedValues : true,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'SkillList',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : wormholeNavigationSkill_code,
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.Text : wormholeNavigationSkill.name,
        Common.Text.@UI.TextArrangement : #TextOnly,
    )
};

annotate service.Spacefarer with {
    department @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Spacefarer',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : department,
                    ValueListProperty : 'department_ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
)};


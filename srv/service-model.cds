using schema as sh from '../db/data-model';

service main {
    entity  Industries @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.INDUSTRIES;

    entity  Skills @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.SKILLS;

    entity Employees @(
        Capabilities:{
            InsertRestrictions : { Insertable:true},
            UpdateRestrictions : { Updatable:true },
            DeleteRestrictions : {Deletable:true},
        }) as projection on sh.EMPLOYEES;
    
    };

//  @(restrict: [
//     { grant: ['*'], to: 'Admin' },
//     { grant: ['READ'], to: 'Viewer' }
//     ])
//   annotate Employees with @odata.draft.bypass;

using schema as sh from '../db/data-model';

service main {
    entity  Industries @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.INDUSTRIES;

    entity Employees @(
        Capabilities:{
            InsertRestrictions : { Insertable:true},
            UpdateRestrictions : { Updatable:true },
            DeleteRestrictions : {Deletable:true},
        }) as projection on sh.EMPLOYEES;

    entity  Employee2Cluster @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE2CLUSTER;

    entity  Cluster @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.CLUSTER;

    entity  Cluster2Leaf_Skills @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.CLUSTER2LEAF_SKILLS;

    entity  Leaf_Skills @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.LEAF_SKILLS;

    
    };

//  @(restrict: [
//     { grant: ['*'], to: 'Admin' },
//     { grant: ['READ'], to: 'Viewer' }
//     ])
//   annotate Employees with @odata.draft.bypass;

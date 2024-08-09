
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

    entity  Employee_Skill_Detail @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_SKILL_DETAIL;

    entity  Cluster_Skill_Detail @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.CLUSTER_SKILL_DETAIL;

    entity  Employee_Industries_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_INDUSTRIES_EXPERIENCE;

     entity  Employee_CV_Experience_Data @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_CV_EXPERIENCE_DATA;

    entity  Employee_Education_Detail @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_EDUCATION_DETAIL;

    entity  Employee_Professional_summary @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_PROFESSIONAL_SUMMARY;

    };
    

//  @(restrict: [
//     { grant: ['*'], to: 'Admin' },
//     { grant: ['READ'], to: 'Viewer' }
//     ])
//   annotate Employees with @odata.draft.bypass;

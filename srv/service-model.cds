
using schema as sh from '../db/data-model';

service main {

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

    entity  Industries @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.INDUSTRIES;

    entity  Customer @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.CUSTOMER;

    entity  Product @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.PRODUCT;

    entity  Language @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.LANGUAGE;

    entity  Country @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.COUNTRY;

    entity  Employee_Skill_Detail @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_SKILL_DETAIL;

    entity  Employee_Industries_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_INDUSTRIES_EXPERIENCE;

    entity  Employee_Customer_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_CUSTOMER_EXPERIENCE;

    entity  Employee_Product_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_PRODUCT_EXPERIENCE;

    entity  Employee_Language_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_LANGUAGE_EXPERIENCE;

    entity  Employee_Country_Experience @(
        Capabilities: {
        InsertRestrictions: {Insertable: true},
        UpdateRestrictions: {Updatable: true},
        DeleteRestrictions: {Deletable: true}
    }) as projection on sh.EMPLOYEE_COUNTRY_EXPERIENCE;

//--------------------------------------------Sitansu-----------------------------------------------------//
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

    entity  Employee_Professional_Summary @(
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

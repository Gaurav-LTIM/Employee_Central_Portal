using {cuid} from '@sap/cds/common';

namespace schema ;

entity INDUSTRIES
{
    industry_cluster: String;
    key INDUSTRY_TYPE: String;
}

// ------------------------------------ 4 ------------------------------------------------------//

entity EMPLOYEE2CLUSTER 
{
    key empl: Association to EMPLOYEES;       // 10000001        10000001
    cluster_array: array of
    {
        clust_JSC: String;                    // ABAP Advance   ABAP Advance
        employee_skill: array of 
        {
            skill:String ;                     // oData          Workflow
            rating: Integer default '0' ;       // 3            2
            exp_years: Integer;               // 1              0
            exp_months: Integer;              // 6              6
            bEditable: Boolean default false ;
        }
    }
}

entity EMPLOYEE_SKILL_DETAIL
{
    empl: Association to EMPLOYEES;     // 10000001        10000001
    key JSC: String;
    key skill:String;                           // oData          Workflow
    rating: Integer;                        // 3            2
    exp_years: Integer;                     // 1              0
    exp_months: Integer;                    // 6              6        
}

entity CLUSTER 
{
    key practice: String;
    key JSC: String;
    key leaf_skills: String;
    key horizon: String;         

}

entity CLUSTER2LEAF_SKILLS
{
    clust: String;         // ABAP Advance  ABAP Advance
    skill: Association  to LEAF_SKILLS;    // oData         workflow
    
}

entity LEAF_SKILLS
{
    key leaf_skills: String;              // oData          workflow
    leaf_cluster : Association to many CLUSTER2LEAF_SKILLS on leaf_cluster.skill= $self;
}

entity EMPLOYEES
{   

    employee_cluster : Association to many EMPLOYEE2CLUSTER on employee_cluster.empl = $self;   // -- 4
    employee_skill_detail : Association to many EMPLOYEE2CLUSTER on employee_skill_detail.empl = $self;

    base_sbu: String;
    deputed_bu: String;
    deputed_sbu: String;
    absorption_date:Date;
    unbilled_ageing_derived_billed_status:String;
    billed_allocation_percentage:UInt8;
    deployement_location:String; // Onsite/ Offshore

    // New Fields Added 10/26/2023
    account_group_age: Integer;
    cummulative_bench_age: Integer;
    unbilled_age_in_current_bu: Integer;
    ageing_in_same_project: Integer;
    
    //Add skill cluster
    business_unit: String;
    base_location: String;
    delivery_unit: String;

    key PS_NO: Int32;
    employee_name: String;
    email: String @assert.format : '^[a-z0-9_.±]+@[a-z0-9-]+.[a-z0-9-.]+$';
    grade: String;
    level: String;
    billing_status: String;
    resigned: String;
    practice: String;
    sub_practice: String; // Primary Skill Cluster -- According to RAMG
    lti_experience: Integer;
    sap_experience: Integer;
    total_experience: Integer;
    lwd: Date;
    resigned_on: Date;

    deputed_country: String;
    date_of_joining: Date;

    customer_name: String;
    project_id: String;
    project_name: String;
    project_start_date: Date;
    project_end_date: Date;
    customer_group: String;

    project_manager_name: String;
    project_manager_ps_number: String;
    reporting_manager: String;
    ps_number_of_reporting_manager: String;
    
    designation: String;
    location: String;
    source_indicator: String;
    active: Boolean;

    profile_pic: String;

    primary_skill_cluster:  String;  //explicitly Added
    secondary_skill_cluster: String;
    project_skill_cluster: String;

}

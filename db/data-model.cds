using {cuid,managed} from '@sap/cds/common';

namespace schema ;

entity EMPLOYEES
{   

    employee_skill_detail : Association to many EMPLOYEE_SKILL_DETAIL on employee_skill_detail.empl = $self;
    employee_cv_experience_data:Association to many EMPLOYEE_CV_EXPERIENCE_DATA on employee_cv_experience_data.empl = $self;
    employee_industries_experience: Association to many EMPLOYEE_INDUSTRIES_EXPERIENCE on employee_industries_experience.empl = $self;
    employee_education_detail: Association to many EMPLOYEE_EDUCATION_DETAIL on employee_education_detail.empl = $self;
    employee_professional_summary: Association to many EMPLOYEE_PROFESSIONAL_SUMMARY on employee_professional_summary.empl = $self;

//-----------------------------------------------------------------------------------------------------------------//
    to_cluster_skill_detail: Association to CLUSTER_SKILL_DETAIL;
    to_employees2cluster_skill_detail: Association to many EMPLOYEES2CLUSTER_SKILL_DETAIL on $self = to_employees2cluster_skill_detail.from_employee;
//-----------------------------------------------------------------------------------------------------------------//

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

    key PS_NO: Integer;
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

entity INDUSTRIES
{
    industry_cluster: String;
    key industry_type: String;
}

entity CLUSTER 
{
    key practice: String;
    key JSC: String;
    key leaf_skills: String;
    key horizon: String;         
}
// ------------------------------------ 4 ------------------------------------------------------//

entity EMPLOYEE_SKILL_DETAIL
{
    key empl: Association to EMPLOYEES;     // 10000001        10000001
    key JSC: String;
    key skill:String;                       // oData          Workflow
    rating: Integer;                        // 3            2
    exp_years: Integer;                     // 1              0
    exp_months: Integer;                    // 6              6      
    bEditable: Boolean default false;
    btnEditable: Boolean default false;  
}

entity EMPLOYEE_INDUSTRIES_EXPERIENCE: cuid
{
    empl: Association to EMPLOYEES;         // 10000001        10000001
    industry_cluster: String;
    industry_type:String;                   // oData          Workflow
    exp_years: Integer;                     // 1              0
    exp_months: Integer;                    // 6              6      
    bEditable: Boolean default false;
}


entity CLUSTER_SKILL_DETAIL : cuid,managed
{
    key ps_no: Int32;
    key practice: String;
    key JSC: String;
    key leaf_skills: String;
    horizon: String;
    rating: Integer;                        // 3            2
    exp_years: Integer;                     // 1              0
    exp_months: Integer;
    //-------------------------------------------------------------------------------------//        
    to_employees : Association to many EMPLOYEES on to_employees.PS_NO =  ps_no;
    to_employees2cluster_skill_detail: Association to many EMPLOYEES2CLUSTER_SKILL_DETAIL on $self = to_employees2cluster_skill_detail.from_cluster;
    //-----------------------------------------------------------------------------------------------------------------//
    
}

//-----------------------------------------------------------------------------------------------------------------//

entity EMPLOYEES2CLUSTER_SKILL_DETAIL: cuid,managed
{
    from_cluster : Association to CLUSTER_SKILL_DETAIL;
    from_employee: Association to EMPLOYEES;
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

//-----------------------------------------------------------------------------------------------------------------//


//Sitansu CV Create Entity
 
entity EMPLOYEE_CV_EXPERIENCE_DATA: cuid
{
    empl: Association to EMPLOYEES;
    company_name:String;
    role:String;
    domain:String;
    startDate:String;
    endDate:String
}

entity EMPLOYEE_EDUCATION_DETAIL
{
    key empl: Association to EMPLOYEES;     // 10000001        10000001
    specialization: String;
    degree: String ;
    institute_name:String;
    startDate:String;
    endDate:String;
}

entity EMPLOYEE_PROFESSIONAL_SUMMARY 
{
    key empl: Association  to EMPLOYEES;
    professional_desc: String;
}
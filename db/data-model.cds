namespace schema ;

entity INDUSTRIES
{
    industry_cluster: String;
    key INDUSTRY_TYPE: String;
}

entity SKILLS
{
    key PRACTICE: String;
    key JSC: String;
    key SKILLS: String;
    horizon: String;
}

entity EMPLOYEES
{   
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

    secondary_skill_cluster: String;
    project_skill_cluster: String;

    // name:String(50);
    // cadre_scg:String(3);
    // billed_status:String(50);
    // resigned:String(3);
    // exp:Double;
    // total_exp:Double;
    
    // unbilling_aging:Int16;
    // billed_allocation:UInt8;
    // last_working_day:Date;
    // model:String(8);
    // customer_name: String(50);
    // project_id:String(9);
    // project_name: String(50);
    // project_start_date: Date;
    // project_end_date: Date;


}

// entity ENERGY_RESOURCES
// {
//     key ENE_ID: Int16;
//     building_material: String(255);
//     chemicals: String(255);
//     mill_products: String(255);
//     mining: String(255);
//     oil_gas_energy: String(255);
//     utilities: String(255);
// }

// entity SERVICE_INDUSTRIES
// {
//     key SER_ID: Int16;
//     cargo_transportation: String(255);
//     Engineering_construction: String(255);
//     media: String(255);
//     passenger_travel: String(255);
//     professional_services: String(255);
//     sports_entertainment: String(255);
//     telecommunications: String(255);
// }

// entity CONSUMER_INDUSTRIES
// {
//     key CON_ID: Int16;
//     agribusiness: String(255);
//     consumer_products: String(255);
//     fashion: String(255);
//     life_sciences: String(255);
//     retail: String(255);
//     wholesale_distribution: String(255);
// }

// entity DISCRETE_INDUSTRIES
// {
//     key DIS_ID: Int16;
//     aerospace_defence: String(255);
//     automative: String(255);
//     high_tech: String(255);
//     industrial_manufacturing: String(255);
// }

// entity FINANCIAL_SERVICES
// {
//     key FIN_ID: Int16;
//     banking: String(255);
//     insurance: String(255);
// }

// entity PUBLIC_SERVICES
// {
//     key PUB_ID: Int16;
//     defence_security: String(255);
//     federal_government: String(255);
//     healthcare: String(255);
//     higher_education: String(255);
//     regional_government: String(255);
// }
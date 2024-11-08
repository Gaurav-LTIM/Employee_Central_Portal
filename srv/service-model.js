const cds = require("@sap/cds");
const { connect } = require("http2");
module.exports = cds.service.impl(async function () {

  this.on('skillFilter', async (req) => {

    // var filterSkills = req.data.filterData;
    var afilterSkills = [], afilterBillingStatus = [], afilterPractice = [];

    if (req.data.filterSkill.length > 0) {
      afilterSkills = req.data.filterSkill.split(',');
    }
    if (req.data.filterStatus.length > 0) {
      afilterBillingStatus = req.data.filterStatus.split(',');
    }
    if (req.data.filterPractice.length > 0) {
      afilterPractice = req.data.filterPractice.split(',');
    }

    var afilterOutput;

    try {
      // Access the CDS service
      const service = await cds.connect.to('main');
      var aEmpl_PS_NO = [], result;

      if (afilterSkills.length > 0) {
        // Define the query
        const skillFilterQuery = SELECT.from('Employee_Skill_Detail').columns('empl_PS_NO').where({ skill: { in: afilterSkills } });
        // Execute the query
        result = await service.run(skillFilterQuery);
      }

      // Handle the data
      var aEmpl_PS_NO = [];
      if (result) {
        aEmpl_PS_NO = [...new Set(result.map(item => item.empl_PS_NO))];
      }

      // let employeeFilterQuery = SELECT.from("Employees");

      let employeeFilterQuery = SELECT.from('Employees', e => {
        e`.*`, // Select all columns from EMPLOYEES
          e.employee_skill_detail(d => {
            d`.*` // Select all columns from EMPLOYEE_SKILL_DETAIL
          }),
          e.employee_industries_experience(i => {
            i`.*` // Select all columns from EMPLOYEE_INDUSTRIES_EXPERIENCE
          }),
          e.employee_customer_experience(c => {
            c`.*` // Select all columns from EMPLOYEE_CUSTOMER_EXPERIENCE
          }),
          e.employee_country_experience(co => {
            co`.*` // Select all columns from EMPLOYEE_COUNTRY_EXPERIENCE
          }),
          e.employee_product_experience(p => {
            p`.*` // Select all columns from EMPLOYEE_PRODUCT_EXPERIENCE
          }),
          e.employee_language_experience(l => {
            l`.*` // Select all columns from EMPLOYEE_LANGUAGE_EXPERIENCE
          }),
          e.employee_cv_experience_data(cv => {
            cv`.*` // Select all columns from EMPLOYEE_CV_EXPERIENCE_DATA
          }),
          e.employee_education_detail(ed => {
            ed`.*` // Select all columns from EMPLOYEE_EDUCATION_DETAIL
          }),
          e.employee_professional_summary(ps => {
            ps`.*` // Select all columns from EMPLOYEE_PROFESSIONAL_SUMMARY
          }),
          e.employee_project_summary(pr => {
            pr`.*` // Select all columns from EMPLOYEE_PROJECT_SUMMARY
          })
      });

      let conditions = [];

      if (aEmpl_PS_NO.length > 0) {
        conditions.push({ PS_NO: { in: aEmpl_PS_NO } });
      }

      if (afilterBillingStatus.length > 0) {
        conditions.push({ billing_status: { in: afilterBillingStatus } });
      }

      if (afilterPractice.length > 0) {
        conditions.push({ practice: { in: afilterPractice } });
      }

      // Build the WHERE clause dynamically 
      if (conditions.length > 0) {
        conditions.forEach((conditionItem, index) => {
          if (index === 0) { // Add the first condition 
            employeeFilterQuery = employeeFilterQuery.where(conditionItem);
          } else {// For subsequent conditions, add 'AND' 
            employeeFilterQuery = employeeFilterQuery.and(conditionItem);
          }
        });
      }

      afilterOutput = await service.run(employeeFilterQuery);

    } catch (error) {
      console.error('Error fetching data:', error);
    }
    return afilterOutput;

  });

  this.on('uniqueDataForFilter', async () => {

    var oUniqueData = {};

    try {
      // Access the CDS service
      const service = await cds.connect.to('main');

      const skillFilterQuery = SELECT.from('Employee_Skill_Detail').columns('skill');
      // Execute the query
      const aAllSkills = await service.run(skillFilterQuery);
      const aUniqueSkill = [...new Set(aAllSkills.map(item => item.skill))]

      const billingFilterQuery = SELECT.from('Employees').columns('billing_status');
      // Execute the query
      const aAllBillingStatus = await service.run(billingFilterQuery);
      const aUniqueBillingStatus = [...new Set(aAllBillingStatus.map(item => item.billing_status))]


      const statusFilterQuery = SELECT.from('Employees').columns('practice');
      // Execute the query
      const aAllPractice = await service.run(statusFilterQuery);
      const aUniquePractice = [...new Set(aAllPractice.map(item => item.practice))]

      oUniqueData = {
        uniqueSkill: aUniqueSkill.map(skill => ({ selectedkey: skill, text: skill })),
        uniqueBillingStatus: aUniqueBillingStatus.map(status => ({ selectedkey: status, text: status })),
        uniquePractice: aUniquePractice.map(practice => ({ selectedkey: practice, text: practice }))
      };

    } catch (error) {
      console.error('Error fetching data:', error);
    }

    return oUniqueData;

  });


});



var sfcc$ = {};
sf$.doSetup=false;
sfjq$(document).ready(function() {
  // Required values: Customer specific values
    sf$.token="45391";

    sf$.showSmartFormAlerts=false;
    sf$.showCriticalAlerts=false;

  // Required mapping: Input field ID mappings for end user input data
    sf$.companyNameFieldAlias="Company";
    sf$.firstNameFieldAlias="FirstName";
    sf$.lastNameFieldAlias="LastName";
    sf$.emailFieldAlias="Email";
    sf$.phoneFieldAlias="Phone";
    sf$.stateFieldAlias="State";
    sf$.countryFieldAlias="Country";

  // Optional mappings: Hidden field ID mappings for MATCHED company append data
    sf$.mCompanyNameFieldAlias="SITE_Company__c";
    sf$.mAddr1FieldAlias="SITE_Addr1__c";
    sf$.mAddr2FieldAlias="SITE_Addr2__c";
    sf$.mCityFieldAlias="SITE_City__c";
    sf$.mStateFieldAlias="SITE_State__c";
    sf$.mCountryFieldAlias="SITE_Country__c";
    sf$.mZipFieldAlias="SITE_Zip__c";
    sf$.mPhoneFieldAlias="Site_Phone_Number__c";
    sf$.mTradeNameFieldAlias="SITE_TradeName__c";
    sf$.mStateCodeFieldAlias="SITE_StateCode__c";
    sf$.mCountryCodeFieldAlias="SITE_CountryCode__c";
    sf$.mEmplyeeCountFieldAlias="SITE_EmplyeesTotal__c";
    sf$.mAnnualRevFieldAlias="SITE_AnnualRev__c";
    sf$.mSicFieldAlias="SITE_SICCode__c";
    sf$.mSicNameFieldAlias="SITE_SicName__c";
    sf$.mNaicsFieldAlias="SITE_NAICCode__c";
    sf$.mNaicsNameFieldAlias="SITE_NAICSName__c";
    sf$.mUrlFieldAlias="SITE_URL__c";
    sf$.mLocationTypeFieldAlias="SITE_LocationType__c";

  // Optional mappings: Hidden field ID mappings for HEADQUARTER company append data
    sf$.hqCompanyNameFieldAlias="HQCompanyName";
    sf$.hqAddr1FieldAlias="HQAddress1";
    sf$.hqAddr2FieldAlias="HQAddress2";
    sf$.hqCityFieldAlias="HQCity";
    sf$.hqStateFieldAlias="HQState";
    sf$.hqZipFieldAlias="HQPostalCode";
    sf$.hqCountryFieldAlias="HQCountry";
    sf$.hqPhoneFieldAlias="HQPhoneNumber";
    sf$.hqTradeNameFieldAlias="HQTradeName";
    sf$.hqStateCodeFieldAlias="HQStateCode";
    sf$.hqCountryCodeFieldAlias="HQCountryCode";
    sf$.hqEmplyeeCountFieldAlias="HQNumberOfEmployees";
    sf$.hqAnnualRevFieldAlias="HQAnnualRevenue";
    sf$.hqSicFieldAlias="HQSICCode";
    sf$.hqSicNameFieldAlias="HQSICName";
    sf$.hqNaicsFieldAlias="HQNAICSCode";
    sf$.hqNaicsNameFieldAlias="HQNAICSName";
    sf$.hqUrlFieldAlias="HQWebsite";
    sf$.hqLocationTypeFieldAlias="HQLocationType";

  // Optional mappings: Hidden field ID mappings for DOMESTIC HEADQUARTER company append data
    sf$.dhqCompanyNameFieldAlias="DomesticHQCompanyName";
    sf$.dhqAddr1FieldAlias="DomesticHQAddress1";
    sf$.dhqAddr2FieldAlias="DomesticHQAddress2";
    sf$.dhqCityFieldAlias="DomesticHQCity";
    sf$.dhqStateFieldAlias="DomesticHQState";
    sf$.dhqZipFieldAlias="DomesticHQPostalCode";
    sf$.dhqCountryFieldAlias="DomesticHQCountry";
    sf$.dhqPhoneFieldAlias="DomesticHQPhoneNumber";
    sf$.dhqTradeNameFieldAlias="DomesticHQTradeName";
    sf$.dhqStateCodeFieldAlias="DomesticHQStateCode";
    sf$.dhqCountryCodeFieldAlias="DomesticHQCountryCode";
    sf$.dhqEmplyeeCountFieldAlias="DomesticHQNumberOfEmployees";
    sf$.dhqAnnualRevFieldAlias="DomesticHQAnnualRevenue";
    sf$.dhqSicFieldAlias="DomesticHQSICCode";
    sf$.dhqSicNameFieldAlias="DomesticHQSICName";
    sf$.dhqNaicsFieldAlias="DomesticHQNAICSCode";
    sf$.dhqNaicsNameFieldAlias="DomesticHQNAICSName";
    sf$.dhqUrlFieldAlias="DomesticHQWebsite";
    sf$.dhqLocationTypeFieldAlias="DomesticHQLocationtype";

  // Optional mappings: Hidden field ID mappings for GLOBAL HEADQUARTER company append data
    sf$.ghqCompanyNameFieldAlias="GlobalHQCompanyName";
    sf$.ghqAddr1FieldAlias="GlobalHQAddress1";
    sf$.ghqAddr2FieldAlias="GlobalHQAddress2";
    sf$.ghqCityFieldAlias="GlobalHQCity";
    sf$.ghqStateFieldAlias="GlobalHQState";
    sf$.ghqZipFieldAlias="GlobalHQPostalCode";
    sf$.ghqCountryFieldAlias="GlobalHQCountry";
    sf$.ghqPhoneFieldAlias="GlobalHQPhoneNumber";
    sf$.ghqTradeNameFieldAlias="GlobalHQTradeName";
    sf$.ghqStateCodeFieldAlias="GlobalHQStateCode";
    sf$.ghqCountryCodeFieldAlias="GlobalHQCountryCode";
    sf$.ghqEmplyeeCountFieldAlias="GlobalHQNumberOfEmployees";
    sf$.ghqAnnualRevFieldAlias="GlobalHQAnnualRevenue";
    sf$.ghqSicFieldAlias="GlobalHQSICCode";
    sf$.ghqSicNameFieldAlias="GlobalHQSICName";
    sf$.ghqNaicsFieldAlias="GlobalHQNAICSCode";
    sf$.ghqNaicsNameFieldAlias="GlobalHQNAICSName";
    sf$.ghqUrlFieldAlias="GlobalHQWebsite";
    sf$.ghqLocationTypeFieldAlias="GlobalHQLocationType";

// inferred firmographics:
    sf$.inferredEmployeesFieldAlias="rFInferredEmployees";

    sfcc$.largestEmployeeCountFieldAlias="Hoovers_Employee_Number__c_lead";
    sfcc$.largestEmployeeCount="";

  // Required mappings:
    sf$.smartFormID = "mktForm_" + sfjq$('input[name=formid]').val();
    sf$.confidenceLevelFieldAlias="SmartFormMatchConfidence";

  // Required values: Select list view customization values.
    sf$.selectListTitle="<caption><h3>Please select your company</h3></caption>";
    sf$.selectListColor1="#dcd5ff"; // RGB color for background of company select list
    sf$.selectListColor2="#ffffff"; // RGB color for background of alternate rows in select list
    sf$.selectListHoverColor="#8888ff"; // RGB color of the row with the mouse over it.
    sf$.searchResultCount=5; // 1-10. defaults to 5

  // Required values: Remediate unmatched or edited company information
    sf$.remediateCompany=true; // true = perform a remediation on companies not selected from the company select list; false = no remediation  (default true)
    sf$.remediateCompanyLevel="review"; // What level of remediation should be delivered ("all" = pass, review, fail; "review" = pass, review; "pass" = pass)

    sfcc$.checkFormExist = setInterval(function() {
          if (sfjq$("#" + sf$.grabInputID(sf$.companyNameFieldAlias)).length) {
              sfcc$.formID=sfjq$("input[name=formid]").val();

              if (typeof Mkto === "object" && typeof Mkto.formSubmit === "function") {
                  // Mkto Forms 1.0 submit injection
                  sf$.smartFormID="mktForm_" + sfcc$.formID;
                  sf$.overrideSubmit=true;
              } else {
                  // Mkto Forms 2.0 submit injection
                  sf$.smartFormID="mktoForm_" + sfcc$.formID;
                  sf$.overrideSubmit=false;
              }

              sf$.assignIDsByName=true;
              sf$.doSetup=true;
              sf$.runSFSetup();

              if (!sf$.overrideSubmit) {
                  sfcc$.doAppend=true;
                  sfcc$.form=MktoForms2.getForm(sfcc$.formID);
                  sfcc$.form.onSubmit(function() {
                      if (typeof sf$.forceSelection === "function" && sfcc$.doAppend && sf$.formCheck()) {
                          sfcc$.form.submitable(false)
                          sfcc$.doAppend = false;
                          sf$.forceSelection();
                          return false;
                      }
                      // return true to allow submit when SF submit injection completes - submit request initiated with sf$.doSmartFormSubmit()
                      return true;
                  });

                  // override sf$.doSmartFormSubmit() so that we force an original form submit, not a scripted form.submit()
                  sf$.doSmartFormSubmit = function() {
                      sfcc$.form.submitable(true);
                      sfjq$("#"+sf$.smartFormID+" :submit").removeAttr("disabled").click();
                      sfjq$('#RFBlockFrame').hide();
                      sfjq$('#RFLoadingFrame').hide();
                  };
              }

              clearInterval(sfcc$.checkFormExist);
          }
      }, 100);
    });

  // Temporary measure for addressing large companies that are orphaned records with small employee counts.
    sf$.translateEmployeeCnt = function(val,elmID) {
      try {
          var intVal = parseInt(val);
          if (intVal == 0) {
              val="";
          } else {
            if(elmID === sf$.dhqEmplyeeCountFieldAlias || elmID === sf$.ghqEmplyeeCountFieldAlias){
              if(intVal > sfcc$.largestEmployeeCount){
                sfcc$.largestEmployeeCount = intVal;
              }
            }
            if(elmID === sf$.ghqEmplyeeCountFieldAlias){
              sfjq$('#'+sfcc$.largestEmployeeCountFieldAlias).val(sfcc$.largestEmployeeCount)
            }
          }
      } catch(e) {}
      return val;
    };
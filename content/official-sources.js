const officialTraSources = {
  mainWebsite:{id:'tra-main',titleSw:'Tovuti Rasmi ya Mamlaka ya Mapato Tanzania',titleEn:'Official Tanzania Revenue Authority Website',url:'https://www.tra.go.tz/',sourceType:'official-website',financialYear:null},
  individualIncomeTax:{id:'tra-individual-income-tax',titleSw:'Utozwaji Kodi ya Mapato kwa Watu Binafsi',titleEn:'Income Tax for Individuals',url:'https://www.tra.go.tz/sw/page/income-tax-for-individuals',sourceType:'official-web-page',financialYear:null},
  payingTaxes:{id:'tra-paying-taxes',titleSw:'Ulipaji Kodi',titleEn:'Paying Taxes',url:'https://www.tra.go.tz/sw/page/paying-taxes',sourceType:'official-web-page',financialYear:null},
  taxGuide2025_2026:{id:'tra-tax-guide-2025-2026',titleSw:'Kodi na Ushuru Mbalimbali 2025/2026',titleEn:'Taxes and Duties Guide 2025/2026',url:'https://www.tra.go.tz/images/uploads/pages/KODI_NA_USHURU_MBALIMBALI_2025_2026.pdf',sourceType:'official-publication',financialYear:'2025/2026'},
  taxClubs:{id:'tra-tax-clubs',titleSw:'Vilabu vya Kodi',titleEn:'Tax Clubs',url:'https://www.tra.go.tz/sw/tax-club',sourceType:'official-web-page',financialYear:null},
  withholdingTax:{id:'tra-withholding-tax',titleSw:'Kodi ya Zuio',titleEn:'Withholding Tax',url:'https://www.tra.go.tz/sw/page/withholding-tax',sourceType:'official-web-page',financialYear:null},
  taxpayerPortal:{id:'tra-taxpayer-portal',titleSw:'Taxpayer Portal / IDRAS',titleEn:'Taxpayer Portal / IDRAS',url:'https://taxpayersportal.tra.go.tz/ept/main',sourceType:'official-digital-service',financialYear:null},
  startingBusiness:{id:'tra-starting-business',titleSw:'Kuanzisha Biashara',titleEn:'Starting Business',url:'https://www.tra.go.tz/page/starting-business-income-for-individuals-and-paying-taxes',sourceType:'official-web-page',financialYear:null},
  vat:{id:'tra-vat',titleSw:'Kodi ya Ongezeko la Thamani',titleEn:'Value Added Tax',url:'https://www.tra.go.tz/page/value-added-tax-vat',sourceType:'official-web-page',financialYear:null},
  paye:{id:'tra-paye',titleSw:'Kodi ya Mapato ya Ajira / PAYE',titleEn:'Pay As You Earn',url:'https://www.tra.go.tz/page/pay-as-you-earn',sourceType:'official-web-page',financialYear:null},
  sdl:{id:'tra-sdl',titleSw:'Uendelezaji Ufundi Stadi / SDL',titleEn:'Skills Development Levy',url:'https://www.tra.go.tz/page/skills-development-levy-sdl',sourceType:'official-web-page',financialYear:'2025/2026'},
  digital:{id:'tra-digital',titleSw:'Kodi katika Huduma za Kielektroniki',titleEn:'Digital Service Tax',url:'https://www.tra.go.tz/page/digital-service-tax',sourceType:'official-web-page',financialYear:null},
  imports:{id:'tra-imports',titleSw:'Taratibu za Kuingiza Bidhaa Nchini',titleEn:'Import Procedures',url:'https://www.tra.go.tz/page/import-procedures',sourceType:'official-web-page',financialYear:null},
  exports:{id:'tra-exports',titleSw:'Taratibu za Kuondosha Bidhaa Nchini',titleEn:'Export Procedures',url:'https://www.tra.go.tz/page/export-procedures',sourceType:'official-web-page',financialYear:null},
  contact:{id:'tra-contact',titleSw:'Wasiliana Nasi',titleEn:'Contact Us',url:'https://www.tra.go.tz/contact-us',sourceType:'official-web-page',financialYear:null}
};
function getOfficialSource(sourceId){return officialTraSources[sourceId]||null;}
window.KZ_OFFICIAL_SOURCES=officialTraSources;

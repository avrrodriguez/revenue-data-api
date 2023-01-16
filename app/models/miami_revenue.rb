class MiamiRevenue < ApplicationRecord
  DEPARTMENT_DESCRIPTIONS = { PARKS: "Parks",
                              DREAM: "DREAM",
                              PUBLIC_WORKS: "Public Works",
                              CITY_ATTORNEY: "City Attorney",
                              FINANCE: "Finance",
                              SOLID_WASTE: "Solid Waste",
                              POLICE: "Police",
                              GSA: "GSA",
                              COMMUNITY_DEVELOPMENT: "Community Development",
                              OFFICE_OF_GRANTS_ADMINISTRATION: "Office of Grants Administration",
                              PLANNING_AND_ZONING: "Planning and Zoning",
                              RISK: "Risk",
                              CIP_AND_TRANS: "CIP & Trans",
                              COMMISSIONER_DISTRICT_5: "Commissioner District - 5",
                              COMMISSIONER_DISTRICT_4: "Commissioner District - 4",
                              FIRE_RESCUE: "Fire Rescue",
                              CITY_CLERK: "City Clerk",
                              COMMUNITY_DEVELOPMENT_99: "Community Development 99",
                              ECONOMIC_DEVELOPMENT: "Economic Development", BUILDING: "Building",
                              COMMISSIONER_DISTRICT_1: "Commissioner District - 1",
                              INFORMATION_TECHNOLOGY: "Information Technology",
                              PURCHASING: "Purchasing",
                              OFFICE_OF_THE_MAYOR: "Office of the Mayor",
                              OFFICE_OF_SUSTAINABLE_INITIATIVES: "Office of Sustainable Initiatives",
                              CITY_MANAGERS_OFFICE: "City Manager's Office",
                              CODE_COMPLIANCE: "Code Compliance",
                              NET: "NET",
                              COMMISSIONER_DISTRICT_3: "Commissioner District - 3",
                              OFFICE_OF_COMMUNICATIONS: "Office of Communications",
                              COMMISSIONER_DISTRICT_2: "Commissioner District - 2",
                              OFFICE_OF_HEARING_BOARDS: "Office of Hearing Boards",
                              NON_DEPARTMENTAL: "Non Departmental",
                              MANAGEMENT_AND_BUDGET: "Management and Budget",
                              FILM_OFFICE: "Film Office",
                              CIVIL_SERVICES: "Civil Services",
                              CRA: "CRA",
                              VIRGINIA_KEY: "Virginia Key",
                              HUMAN_RESOURCES: "Human Resources",
                              DEPARTMENT_OF_ZONING: "Department of Zoning",
                              AUDITOR_GENERAL: "Auditor General",
                              COMMUNITY_RELATIONS_BOARD: "Community Relations Board",
                              PENSION: "Pension",
                              EODP: "EODP",
                              OFFICE_OF_RESILIENCY_AND_SUSTAINABILITY: "Office of Resiliency and Sustainability",
                              CIP: "CIP",
                              DEPARTMENT_OF_PLANNING: "Department of Planning",
                              VETERANS_AFFAIRS: "Veterans Affairs",
                              CIP_AND_TRANS_TRANSPORTATION: "CIP & Trans - Transportation",
                              OFFICE_OF_ZONING: "Office of Zoning",
                              CIP_AND_TRANS_CSBE: "CIP & Trans - CSBE",
                              COMMISSION_CHAIRPERSONS_OFFICE: "Commission Chairperson's Office" }.freeze

  scope :with_no_budget, -> { where("adopted_budget = 0") }
  scope :building_department, -> { where("department_description = ?", DEPARTMENT_DESCRIPTIONS[:BUILDING]) }
  scope :yearly_department_earnings, -> { select("department_description, fy, sum(total) as total_revenue").group("department_description, fy") }
  scope :department_organizations, ->(department) { select("organization_description").where("department_description LIKE ?", department) }
  scope :with_bonus, -> { where("thirteenth_month > 0") }
  scope :organization_budget, ->(organization) { select("organization_description, fy, total").where("organization_description LIKE ?", organization) }
  # scope :yearly_department_total, -> {
  #         select("case when fy = '2006' then sum(total) end as _2006,
  #               case when fy = '2007' then sum(total) end as _2007,
  #               case when fy = '2008' then sum(total) end as _2008,
  #               case when fy = '2009' then sum(total) end as _2009,
  #               case when fy = '2010' then sum(total) end as _2010,
  #               case when fy = '2011' then sum(total) end as _2011,
  #               case when fy = '2012' then sum(total) end as _2012,
  #               case when fy = '2013' then sum(total) end as _2013,
  #               case when fy = '2014' then sum(total) end as _2014,
  #               case when fy = '2015' then sum(total) end as _2015,
  #               case when fy = '2016' then sum(total) end as _2016,
  #               case when fy = '2017' then sum(total) end as _2017,
  #               case when fy = '2018' then sum(total) end as _2018").group("department_description, fy")
  #       }
end

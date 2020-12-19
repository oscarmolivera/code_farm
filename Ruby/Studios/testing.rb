require 'json'

@contact_params = {
  firstname:"Pedro Kretikouski Roque Júnior",
  locale:"pt-BR",
  date_of_birth: "12/8/1988",
  industry:"TI",
  salary__c:"$ 4.000",
  variable_salary__c:"1",
  email:"test2@smtm.co",
  jobtitle:"INGENIERO",
  graduation_level:"Graduação",
  english_level:"Intermediário",
  job_area:"IT",
  seniority:"Médio",
  company_size:"Grande"
  }

  def set_country(locale)
    @country = {AR: 'ARGENTINA', BR: 'BRAZIL', CL: 'CHILE', CO: 'COLOMBIA', MX: 'MEXICO', PE: 'PERU', }[locale.split('-')[1].to_sym]
  end

  def options
    properties = []
    @contact_params[:firstname].nil? ? properties : properties.push({property: "firstname", value: @contact_params[:firstname] })
    @contact_params[:locale].nil? ? properties : properties.push({ property: "country", value: set_country(@contact_params[:locale]) })
    @contact_params[:date_of_birth].nil? ? properties : properties.push({property: "date_of_birth", value: @contact_params[:date_of_birth] })
    @contact_params[:graduation_level].nil? ? properties : properties.push({property: "graduation_level", value: @contact_params[:graduation_level] })
    @contact_params[:english_level].nil? ? properties : properties.push({property: "english_level", value: @contact_params[:english_level] })
    @contact_params[:company_size].nil? ? properties : properties.push({property: "company_size", value: @contact_params[:company_size] })
    @contact_params[:industry].nil? ? properties : properties.push({property: "industry", value: @contact_params[:industry] })
    @contact_params[:seniority].nil? ? properties : properties.push({property: "seniority", value: @contact_params[:seniority] })
    @contact_params[:job_area].nil? ? properties : properties.push({property: "job_area", value: @contact_params[:job_area] })
    @contact_params[:jobtitle].nil? ? properties : properties.push({property: "jobtitle", value: @contact_params[:jobtitle] })
    @contact_params[:salary__c].nil? ? properties : properties.push({property: "salary__c", value: @contact_params[:salary__c] })
    @contact_params[:variable_salary__c].nil? ? properties : properties.push({property: "variable_salary__c", value: @contact_params[:variable_salary__c] })
    { email: @contact_params[:email], properties: properties }
  end
p options

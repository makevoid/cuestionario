project_names = JSON.parse(project_names)
partners = JSON.parse(partners)

project_name = document.querySelector("[name=project_name]")
partners_cont = document.querySelector(".partners")
project_name.addEventListener("change", function(){
  partners_sel = document.querySelector("[name=partners]")
  partners_sel.remove()
  // append
  project_name_idx = _(project_names).indexOf(project_name.value)
  options = ""
  _(partners[project_name_idx]).each(function(p, idx){
    options = options+"<option>"+p+"</option>"
  })
  select = "<select name='partners'>"+options+"</select>"
  $(partners_cont).append(select)
})
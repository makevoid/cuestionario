$(function(){

  project_names = JSON.parse(project_names)
  partners = JSON.parse(partners)
  activities = JSON.parse(activities)

  project_name = document.querySelector("[name=project_name]")
  partners_cont = document.querySelector(".partners")
  project_name.addEventListener("change", function(){
    sel = document.querySelector("[name=partners]")
    sel.remove()
    // append
    name_idx = _(project_names).indexOf(project_name.value)
    options = ""
    _(partners[name_idx]).each(function(p, idx){
      options = options+"<option>"+p+"</option>"
    })
    select = "<select name='partners'>"+options+"</select>"
    $(partners_cont).append(select)

  })

  activities_cont = document.querySelector(".activities_cont")
  project_name.addEventListener("change", function(){
    sel = document.querySelector("[name=activities]")
    sel.remove()
    // append
    name_idx = _(project_names).indexOf(project_name.value)
    options = ""
    _(activities[name_idx]).each(function(p, idx){
      options = options+"<option>"+p+"</option>"
    })
    select = "<select name='activities'>"+options+"</select>"
    $(activities_cont).append(select)
    bind_activities()

    // change activity
    activities_name = document.querySelector("[name=activities]")
    $(".activities").html(activities_name.value || "...")
  })


  project_name.addEventListener("change", function(){
    $(".project_name").html(project_name.value)
  })

  function bind_activities() {
    activities_name = document.querySelector("[name=activities]")
    activities_name.addEventListener("change", function(){
      $(".activities").html(activities_name.value)
    })
  }

  bind_activities()

})
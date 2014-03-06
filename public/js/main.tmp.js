$(function(){

  project_names = JSON.parse(project_names)
  partners = JSON.parse(partners)
  activities = JSON.parse(activities)
  objectives = JSON.parse(objectives)


  var project_name = $("[name=project_name]")
  var partners_cont = $(".partners")
  project_name.on("change", function(){
    $("[name=partners]").remove()
    // append
    name_idx = _(project_names).indexOf(project_name.val())
    options = ""
    _(partners[name_idx]).each(function(p, idx){
      options = options+"<option>"+p+"</option>"
    })
    select = "<select name='partners'>"+options+"</select>"
    $(partners_cont).append(select)
  })

  activities_cont = $(".activities_cont")
  project_name.on("change", function(){
    $("[name=activities]").remove()

    // append
    name_idx = _(project_names).indexOf(project_name.val())
    options = ""
    _(activities[name_idx]).each(function(p, idx){
      options = options+"<option>"+p+"</option>"
    })
    select = "<select name='activities'>"+options+"</select>"
    $(activities_cont).append(select)

    bind_activities()
    do_changes()
  })

  project_name.on("change", function(){
    $(".project_names").html(project_name.val())
  })


  function do_changes(){
    // change activity
    var activities_name = $("[name=activities]")
    $(".activities").html(activities_name.val())
    // change objectives
    project_name = $("[name=project_name]")
    name_idx = _(project_names).indexOf(project_name.val().trim())
    $(".objectives").html(objectives[name_idx][0])
  }

  function bind_activities() {
    var activities_name = $("[name=activities]")
    activities_name.on("change", function(){
      $(".activities").html(activities_name.val())
    })
  }

  function previous_answer() {
    var tags = ["efectos", "pobolacion_beneficiaria", "apreciacion_efectos", "organizacion", "puestos", "efectos", "servicios"]
    _(tags).each(function(tag){
      value = $("[name="+tag+"]").val()
      $("."+tag).html(value)

      $("[name="+tag+"]").on("change", function(){
        value = $("[name="+tag+"]").val()
        $("."+tag).html(value)
      })
    })
  }

  function collaborador_beneficiario() {
    $("[name=collaborador_beneficiario]").on("change", function(evt){
      value = evt.target.value
      if (value == "Ninguno")
        $(".collaborator").hide()
      else
        $(".collaborator").show()
    })
  }

  bind_activities()
  do_changes()
  previous_answer()
  collaborador_beneficiario()

})
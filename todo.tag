<todo>
  <h1>{ opts.items[0].title }</h1>
  <h2 id="findme">{ blog_title }</h2>
  <ul>
    <li each={titles}>
      <h3 class={ completed: bool }>{sequence}</h3>
      <label class={ completed: done }>
        <input type="checkbox" checked={done} onclick={ parent.toggle } /> { name }
      </label>
    </li>
    <br>
    <form class="form" onsubmit={ add }>
      <input type="text" placeholder="Add another" name="input" onkeyup={ edit } />
    </form>

    <label>{text}</label>
  </ul>

  <script type="text/coffee">
    @blog_title = "The Coding Writer"
    @titles = [
      {name: "A Secret Book", done: true, sequence: 1},
      {name: "Another Secret Here", done: false, sequence: 2},
      {name: "An Incredible Secret", sequence: 3},
      {name: "RiotJS Rocks!", sequence: 4}
    ]
    @bool = false
    @myvar = "Startups Unlimited"
    @sequences = 4
    @toggle = (e)->
      # alert "A piece of code"
      item  = e.item
      item.done = !item.done
      true

    @getinput = ""

    @edit = (e) ->
      @text = e.target.value
      @getinput = e.target

    @add = (e) ->
      # alert "You want to add #{@text}"
      @titles.push {name: @text, sequence: ++@sequences}
      @text = ""
      @getinput.value = ""
      # true

    test1 = $("#findme").text()
    console.log "test1", test1

    this.on "update", ->
      test2 = $("#findme").text()
      console.log "test2", test2

    this.on "mount", ->
      test3 = $("#findme")
      console.log "test3", test3
      $("body").css("text-transform", "uppercase")
      $("body").css("font-weight", "100")


  </script>
</todo>

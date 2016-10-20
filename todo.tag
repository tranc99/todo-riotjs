<todo>
  <h1>{ opts.items[0].title }</h1>
  <h2 >{ blog_title }</h2>
  <ul>
    <li each={titles}>
      <h3 class={ completed: bool }>{sequence}</h3>
      <label class={ completed: done }>
        <input type="checkbox" checked={done} onclick={ shout } /> { name }
      </label>
    </li>
    <br>
    <form class="" action="index.html" method="post">
      <input type="text" placeholder="Add another" />
    </form>

  </ul>

  <script type="text/coffee">
    @blog_title = "The Coding Writer"
    @titles = [
      {name: "A Secret Book", done: true, sequence: 1},
      {name: "Another Secret Here", done: false, sequence: 2},
      {name: "An Incredible Secret", sequence: 3}
    ]
    @bool = true
    @myvar = "Startups Unlimited"

    @shout = (e)->
      alert "A piece of code"
  </script>
</todo>

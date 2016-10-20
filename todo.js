riot.tag2('todo', '<h1>{opts.items[0].title}</h1><h2>{blog_title}</h2><ul><li each="{titles}"><h3 class="{completed: bool}">{sequence}</h3><label class="{completed: done}"><input type="checkbox" __checked="{done}" onclick="{shout}"> {name} </label></li><br><form class="" action="index.html" method="post"><input type="text" placeholder="Add another"></form></ul>', '', '', function(opts) {
this.blog_title = "The Coding Writer";

this.titles = [
  {
    name: "A Secret Book",
    done: true,
    sequence: 1
  }, {
    name: "Another Secret Here",
    done: false,
    sequence: 2
  }, {
    name: "An Incredible Secret",
    sequence: 3
  }
];

this.bool = true;

this.myvar = "Startups Unlimited";

this.shout = function(e) {
  return alert("A piece of code");
};
});

riot.tag2('todo', '<h1>{opts.items[0].title}</h1><h2 id="findme">{blog_title}</h2><ul><li each="{titles}"><h3 class="{completed: bool}">{sequence}</h3><label class="{completed: done}"><input type="checkbox" __checked="{done}" onclick="{parent.toggle}"> {name} </label></li><br><form class="form" onsubmit="{add}"><input type="text" placeholder="Add another" name="input" onkeyup="{edit}"></form><label>{text}</label></ul>', '', '', function(opts) {
var test1;

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
  }, {
    name: "RiotJS Rocks!",
    sequence: 4
  }
];

this.bool = false;

this.myvar = "Startups Unlimited";

this.sequences = 4;

this.toggle = function(e) {
  var item;
  item = e.item;
  item.done = !item.done;
  return true;
};

this.getinput = "";

this.edit = function(e) {
  this.text = e.target.value;
  return this.getinput = e.target;
};

this.add = function(e) {
  this.titles.push({
    name: this.text,
    sequence: ++this.sequences
  });
  this.text = "";
  return this.getinput.value = "";
};

test1 = $("#findme").text();

console.log("test1", test1);

this.on("update", function() {
  var test2;
  test2 = $("#findme").text();
  return console.log("test2", test2);
});

this.on("mount", function() {
  var test3;
  test3 = $("#findme");
  console.log("test3", test3);
  $("body").css("text-transform", "uppercase");
  return $("body").css("font-weight", "100");
});
});

<content-navigation class="ui dividing right rail">
  <div class="sticky">
    <h4 class="ui header">{ opts.title }</h4>
    <div class="ui vertical text menu">
      <div class="item" each="{ item in opts.items }">
        <div class="header">{ item.header }</div>
        <div class="menu">
          <a class="item" each="{ child in item.items }" href="#{ kebab(child) }">{ child }</a>
        </div>
      </div>
    </div>
  </div>

  <style>
    .sticky {
      position: sticky;
      padding-top: 1.5rem;
      top: 0;
    }
  </style>
</content-navigation>
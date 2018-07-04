<section-header>
  <a class="anchor" name="{ kebab(opts.title) }"></a>
  <h3 class="ui header">{ opts.title }</h3>
  <p>
    <yield />
  </p>
  <style>
    p:last-child {
      margin-bottom: 1rem;
    }
  </style>
  <script>
    this.kebab = target => {
      return target.replace(/([a-z])([A-Z])/g, '$1-$2').replace(/\s+/g, '-').toLowerCase()
    }
  </script>
</section-header>
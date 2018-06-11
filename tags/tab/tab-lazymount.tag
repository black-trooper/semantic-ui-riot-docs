<tab-lazymount>
  <h3 class="ui header">Lazy mount</h3>
  <p>Components under the su-tab will be mounted at the first time display.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="three column item" lazy-mount="true">
        <su-tab title="Home">
          <child>Home content</child>
        </su-tab>
        <su-tab title="Messages">
          <child>Messages content</child>
        </su-tab>
        <su-tab title="Friends">
          <child>Friends content</child>
        </su-tab>
      </su-tabset>
      <div class="ui message" if="{ mountMessages.length > 0 }">
        <ul>
          <li each="{ item in mountMessages }">{ item }</li>
        </ul>
      </div>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="three column item" lazy-mount="true">
          <su-tab title="Home"><child>Home content</child></su-tab>
          <su-tab title="Messages"><child>Messages content</child></su-tab>
          <su-tab title="Friends"><child>Friends content</child></su-tab>
        </su-tabset>
      </code></pre>
    </div>
  </section>
  <script>
    this.mountMessages = []
  </script>
</tab-lazymount>

<child>
  <yield />
  <script>
    this.on('mount', () => {
      this.parent.parent.parent.mountMessages.push(`${this.parent.opts.title} component is mounted.`)
      this.parent.parent.parent.update()
    })
  </script>
</child>
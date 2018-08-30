<tab-active>
  <section-header title="Active">A menu item can be active.</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="three column item" active="{ active }" ref="tabset">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
      <div class="ui divider"></div>
      <button class="ui button" click="{ setActive.bind(this, 'Home') }">Home</button>
      <button class="ui button" click="{ setActive.bind(this, 'Messages') }">Messages</button>
      <button class="ui button" click="{ setActive.bind(this, 'Friends') }">Friends</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="three column item" active="{ active }">
          <su-tab title="Home">Home content</su-tab>
          <su-tab title="Messages">Messages content</su-tab>
          <su-tab title="Friends">Friends content</su-tab>
        </su-tabset>

        <button class="ui button" click="{ setActive.bind(this, 'Home') }">Home</button>
        <button class="ui button" click="{ setActive.bind(this, 'Messages') }">Messages</button>
        <button class="ui button" click="{ setActive.bind(this, 'Friends') }">Friends</button>

        <script>
          this.active = 'Messages'
          this.setActive = target => {
            this.active = target
          }
        </script>
      </code></pre>
    </div>
  </section>

  <script>
    this.active = 'Messages'
    this.setActive = target => {
      this.active = target
    }
  </script>
</tab-active>
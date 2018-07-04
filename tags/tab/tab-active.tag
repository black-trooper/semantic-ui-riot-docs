<tab-active>
  <section-header title="Active">A menu item can be active.</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="three column item">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages" active="true">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="three column item">
          <su-tab title="Home">Home content</su-tab>
          <su-tab title="Messages" active="true">Messages content</su-tab>
          <su-tab title="Friends">Friends content</su-tab>
        </su-tabset>
      </code></pre>
    </div>
  </section>
</tab-active>
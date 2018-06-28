<tab-basic>
  <a class="anchor" name="basic"></a>
  <h3 class="ui header">Basic</h3>
  <p>A basic tab.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="three column item">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="three column item">
          <su-tab title="Home">Home content</su-tab>
          <su-tab title="Messages">Messages content</su-tab>
          <su-tab title="Friends">Friends content</su-tab>
        </su-tabset>
      </code></pre>
    </div>
  </section>
</tab-basic>
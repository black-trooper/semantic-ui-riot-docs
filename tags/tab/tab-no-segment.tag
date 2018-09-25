<tab-no-segment>
  <section-header title="No segment"><span class="ui label teal small">since 0.10.1</span></section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="no-segment">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
          <su-tabset class="no-segment">
            <su-tab title="Home">Home content</su-tab>
            <su-tab title="Messages">Messages content</su-tab>
            <su-tab title="Friends">Friends content</su-tab>
          </su-tabset>
        </code></pre>
    </div>
  </section>

  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset>
        <su-tab title="Home" class="none">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-tabset>
          <su-tab title="Home" class="none">Home content</su-tab>
          <su-tab title="Messages">Messages content</su-tab>
          <su-tab title="Friends">Friends content</su-tab>
        </su-tabset>
      </code></pre>
    </div>
  </section>
</tab-no-segment>
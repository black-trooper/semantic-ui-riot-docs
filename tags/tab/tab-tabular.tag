<tab-tabular>
  <h3 class="ui header">Tabular</h3>
  <p>A menu can be formatted to show tabs of information.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="top tabular">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="top tabular">
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
      <su-tabset class="bottom tabular">
        <su-tab title="Home">Home content</su-tab>
        <su-tab title="Messages">Messages content</su-tab>
        <su-tab title="Friends">Friends content</su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="bottom tabular">
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
      <su-tabset class="left tabular">
        <div class="ui grid">
          <div class="four wide column">
            <su-tab-header>
              <su-tab-title>Home</su-tab-title>
              <su-tab-title>Messages</su-tab-title>
              <su-tab-title>Friends</su-tab-title>
            </su-tab-header>
          </div>
          <div class="twelve wide stretched column">
            <su-tab>Home content</su-tab>
            <su-tab>Messages content</su-tab>
            <su-tab>Friends content</su-tab>
          </div>
        </div>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="left tabular">
          <div class="ui grid">
            <div class="four wide column">
              <su-tab-header>
                <su-tab-title>Home</su-tab-title>
                <su-tab-title>Messages</su-tab-title>
                <su-tab-title>Friends</su-tab-title>
              </su-tab-header>
            </div>
            <div class="twelve wide stretched column">
              <su-tab>Home content</su-tab>
              <su-tab>Messages content</su-tab>
              <su-tab>Friends content</su-tab>
            </div>
          </div>
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
      <su-tabset class="right tabular">
        <div class="ui grid">
          <div class="twelve wide stretched column">
            <su-tab>Home content</su-tab>
            <su-tab>Messages content</su-tab>
            <su-tab>Friends content</su-tab>
          </div>
          <div class="four wide column">
            <su-tab-header>
              <su-tab-title>Home</su-tab-title>
              <su-tab-title>Messages</su-tab-title>
              <su-tab-title>Friends</su-tab-title>
            </su-tab-header>
          </div>
        </div>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="right tabular">
          <div class="ui grid">
            <div class="twelve wide stretched column">
              <su-tab>Home content</su-tab>
              <su-tab>Messages content</su-tab>
              <su-tab>Friends content</su-tab>
            </div>
            <div class="four wide column">
              <su-tab-header>
                <su-tab-title>Home</su-tab-title>
                <su-tab-title>Messages</su-tab-title>
                <su-tab-title>Friends</su-tab-title>
              </su-tab-header>
            </div>
          </div>
        </su-tabset>
      </code></pre>
    </div>
  </section>
</tab-tabular>
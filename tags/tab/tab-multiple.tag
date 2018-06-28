<tab-multiple>
  <a class="anchor" name="multiple-tab-groups"></a>
  <h3 class="ui header">Multiple Tab Groups</h3>
  <p>There are a several of ways to include independent tab groups on the same page, even with history. One of the easiest ways
    is provide a specific parent context for each tab group.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-tabset class="secondary">
        <su-tab title="First">
          <su-tabset class="top tabular">
            <su-tab title="1A">1A</su-tab>
            <su-tab title="1B" active="true">1B</su-tab>
            <su-tab title="1C">1C</su-tab>
          </su-tabset>
        </su-tab>
        <su-tab title="Second">
          <su-tabset class="top tabular">
            <su-tab title="2A">2A</su-tab>
            <su-tab title="2B">2B</su-tab>
            <su-tab title="2C">2C</su-tab>
          </su-tabset>
        </su-tab>
        <su-tab title="Third">
          <su-tabset class="top tabular">
            <su-tab title="3A">3A</su-tab>
            <su-tab title="3B">3B</su-tab>
            <su-tab title="3C">3C</su-tab>
          </su-tabset>
        </su-tab>
      </su-tabset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-tabset class="secondary">
          <su-tab title="First">
            <su-tabset class="top tabular">
              <su-tab title="1A">1A</su-tab>
              <su-tab title="1B" active="true">1B</su-tab>
              <su-tab title="1C">1C</su-tab>
            </su-tabset>
          </su-tab>
          <su-tab title="Second">
            <su-tabset class="top tabular">
              <su-tab title="2A">2A</su-tab>
              <su-tab title="2B">2B</su-tab>
              <su-tab title="2C">2C</su-tab>
            </su-tabset>
          </su-tab>
          <su-tab title="Third">
            <su-tabset class="top tabular">
              <su-tab title="3A">3A</su-tab>
              <su-tab title="3B">3B</su-tab>
              <su-tab title="3C">3C</su-tab>
            </su-tabset>
          </su-tab>
        </su-tabset>
      </code></pre>
    </div>
  </section>
</tab-multiple>
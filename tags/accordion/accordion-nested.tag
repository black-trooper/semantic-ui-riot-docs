<accordion-nested>
  <section-header title="Nested Accordions">An accordion can have multiple levels of nested content. This content can
    either be in a nested accordion or simply another
    level of title and content</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-accordionset class="styled">
        <su-accordion title="Level 1">
          <p>Welcome to level 1</p>
          <su-accordionset class="styled">
            <su-accordion title="Level 1A">
              <p>Level 1A Contents</p>
              <su-accordionset class="styled">
                <su-accordion title="Level 1A-A">
                  <p>Level 1A-A Contents</p>
                </su-accordion>
                <su-accordion title="Level 1A-B">
                  <p>Level 1A-B Contents</p>
                </su-accordion>
              </su-accordionset>
            </su-accordion>
            <su-accordion title="Level 1B">
              <p>Level 1B Contents</p>
            </su-accordion>
            <su-accordion title="Level 1C">
              <p>Level 1C Contents</p>
            </su-accordion>
          </su-accordionset>
        </su-accordion>
        <su-accordion title="Level 2">
          <p>Welcome to level 2</p>
        </su-accordion>
      </su-accordionset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-accordionset class="styled">
          <su-accordion title="Level 1">
            <p>Welcome to level 1</p>
            <su-accordionset class="styled">
              <su-accordion title="Level 1A">
                <p>Level 1A Contents</p>
                <su-accordionset class="styled">
                  <su-accordion title="Level 1A-A">
                    <p>Level 1A-A Contents</p>
                  </su-accordion>
                  <su-accordion title="Level 1A-B">
                    <p>Level 1A-B Contents</p>
                  </su-accordion>
                </su-accordionset>
              </su-accordion>
              <su-accordion title="Level 1B">
                <p>Level 1B Contents</p>
              </su-accordion>
              <su-accordion title="Level 1C">
                <p>Level 1C Contents</p>
              </su-accordion>
            </su-accordionset>
          </su-accordion>
          <su-accordion title="Level 2">
            <p>Welcome to level 2</p>
          </su-accordion>
        </su-accordionset>
      </code></pre>
    </div>
  </section>
</accordion-nested>
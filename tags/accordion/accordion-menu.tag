<accordion-menu>
  <section-header title="Accordion Menu">An accordion can be used to create content drawers inside a menu</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-accordionset class="vertical menu">
        <div class="item">
          <su-accordion title="Size">
            <div class="ui form">
              <div class="grouped fields">
                <div class="field">
                  <div class="ui radio checkbox">
                    <input type="radio" name="size" value="small">
                    <label>Small</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui radio checkbox">
                    <input type="radio" name="size" value="medium">
                    <label>Medium</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui radio checkbox">
                    <input type="radio" name="size" value="large">
                    <label>Large</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui radio checkbox">
                    <input type="radio" name="size" value="x-large">
                    <label>X-Large</label>
                  </div>
                </div>
              </div>
            </div>
          </su-accordion>
        </div>
        <div class="item">
          <su-accordion title="Colors">
            <div class="ui form">
              <div class="grouped fields">
                <div class="field">
                  <div class="ui checkbox">
                    <input type="checkbox" name="small">
                    <label>Red</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui checkbox">
                    <input type="checkbox" name="medium">
                    <label>Orange</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui checkbox">
                    <input type="checkbox" name="large">
                    <label>Green</label>
                  </div>
                </div>
                <div class="field">
                  <div class="ui checkbox">
                    <input type="checkbox" name="x-large">
                    <label>Blue</label>
                  </div>
                </div>
              </div>
            </div>
          </su-accordion>
        </div>
      </su-accordionset>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-accordionset class="vertical menu">
          <div class="item">
            <su-accordion title="Size">
              <div class="ui form">
                <div class="grouped fields">
                  <div class="field">
                    <div class="ui radio checkbox">
                      <input type="radio" name="size" value="small">
                      <label>Small</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui radio checkbox">
                      <input type="radio" name="size" value="medium">
                      <label>Medium</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui radio checkbox">
                      <input type="radio" name="size" value="large">
                      <label>Large</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui radio checkbox">
                      <input type="radio" name="size" value="x-large">
                      <label>X-Large</label>
                    </div>
                  </div>
                </div>
              </div>
            </su-accordion>
          </div>
          <div class="item">
            <su-accordion title="Colors">
              <div class="ui form">
                <div class="grouped fields">
                  <div class="field">
                    <div class="ui checkbox">
                      <input type="checkbox" name="small">
                      <label>Red</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui checkbox">
                      <input type="checkbox" name="medium">
                      <label>Orange</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui checkbox">
                      <input type="checkbox" name="large">
                      <label>Green</label>
                    </div>
                  </div>
                  <div class="field">
                    <div class="ui checkbox">
                      <input type="checkbox" name="x-large">
                      <label>Blue</label>
                    </div>
                  </div>
                </div>
              </div>
            </su-accordion>
          </div>
        </su-accordionset>
      </code></pre>
    </div>
  </section>
</accordion-menu>
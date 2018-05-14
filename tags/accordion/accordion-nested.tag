<accordion-nested>
  <h3 class="ui header">Nested Accordions</h3>
  <p>An accordion can have multiple levels of nested content. This content can either be in a nested accordion or simply another
    level of title and content
  </p>
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
      <pre class="prettyprint"><code>
          <su-accordionset>
            <su-accordion title="What is a dog?">
              <p>A dog is a type of domesticated animal. Known for its loyalty and faithfulness, it can be found as a welcome guest in
                many households across the world.</p>
            </su-accordion>
            <su-accordion title="What kinds of dogs are there?">
              <p>There are many breeds of dogs. Each breed varies in size and temperament. Owners often select a breed of dog that they
                find to be compatible with their own lifestyle and desires from a companion.</p>
            </su-accordion>
            <su-accordion title="How do you acquire a dog?">
              <p>Three common ways for a prospective owner to acquire a dog is from pet shops, private owners, or shelters.</p>
              <p>A pet shop may be the most convenient way to buy a dog. Buying a dog from a private owner allows you to assess the pedigree
                and upbringing of your dog before choosing to take it home. Lastly, finding your dog from a shelter, helps give a good
                home to a dog who may not find one so readily.</p>
            </su-accordion>
          </su-accordionset>
        </code></pre>
    </div>
  </section>
</accordion-nested>
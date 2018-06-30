<dropdown-multiple>
  <a class="anchor" name="multiple-selection"></a>
  <h3 class="ui header">Multiple Selection</h3>
  <p>A selection dropdown can allow multiple selections</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" multiple="true"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-dropdown items="{ dropdownItems }" multiple="true"></su-dropdown>
  
        <script>
          this.dropdownItems = [
            {
              label: 'Skills',
              value: null,
              default: true
            },
            { value: 'angular', label: 'Angular' },
            { value: 'css', label: 'CSS' },
            { value: 'design', label: 'Graphic Design' },
            { value: 'ember', label: 'Ember' },
            { value: 'html', label: 'HTML' },
            { value: 'ia', label: 'Information Architecture' },
            { value: 'javascript', label: 'Javascript' },
            { value: 'mech', label: 'Mechanical Engineering' },
            { value: 'meteor', label: 'Meteor' },
            { value: 'node', label: 'NodeJS' },
            { value: 'plumbing', label: 'Plumbing' },
            { value: 'python', label: 'Python' },
            { value: 'rails', label: 'Rails' },
            { value: 'react', label: 'React' },
            { value: 'repair', label: 'Kitchen Repair' },
            { value: 'ruby', label: 'Ruby' },
            { value: 'ui', label: 'UI Design' },
            { value: 'ux', label: 'User Experience' }
          ]
        </script>
      </code></pre>
    </div>
  </section>

  <script>
    this.dropdownItems = [
      {
        label: 'Skills',
        value: null,
        default: true
      },
      { value: 'angular', label: 'Angular' },
      { value: 'css', label: 'CSS' },
      { value: 'design', label: 'Graphic Design' },
      { value: 'ember', label: 'Ember' },
      { value: 'html', label: 'HTML' },
      { value: 'ia', label: 'Information Architecture' },
      { value: 'javascript', label: 'Javascript' },
      { value: 'mech', label: 'Mechanical Engineering' },
      { value: 'meteor', label: 'Meteor' },
      { value: 'node', label: 'NodeJS' },
      { value: 'plumbing', label: 'Plumbing' },
      { value: 'python', label: 'Python' },
      { value: 'rails', label: 'Rails' },
      { value: 'react', label: 'React' },
      { value: 'repair', label: 'Kitchen Repair' },
      { value: 'ruby', label: 'Ruby' },
      { value: 'ui', label: 'UI Design' },
      { value: 'ux', label: 'User Experience' }
    ]
  </script>
</dropdown-multiple>
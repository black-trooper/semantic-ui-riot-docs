<demo-dropdown-selection>
  <h3 class="ui header">Selection</h3>
  <p>A dropdown can be used to select between choices in a form</p>

  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre><code class="prettyprint">
      <!-- <su-dropdown items="{ dropdownItems }"></su-dropdown>

      <script>
        this.dropdownItems = [
          {
            label: 'Gender',
            value: null,
            default: true
          },
          {
            label: 'Male',
            value: 1
          },
          {
            label: 'Female',
            value: 2
          },
        ]
      </script> -->
    </code></pre>
    </div>
  </section>

  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems9 }" class="fluid"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre><code class="prettyprint">
      <su-dropdown items="{ dropdownItems }" class="fluid" ></su-dropdown>

      <script>
        this.dropdownItems = [
          {
            label: 'Select Friend',
            value: null,
            default: true
          },
          {
            label: 'Jenny Hess',
            image: './images/avatar/small/jenny.jpg',
            value: 'jenny'
          },
          {
            label: 'Elliot Fu',
            image: './images/avatar/small/elliot.jpg',
            value: 'elliot'
          },
          {
            label: 'Stevie Feliciano',
            image: './images/avatar/small/stevie.jpg',
            value: 'stevie'
          },
          {
            label: 'Christian',
            image: './images/avatar/small/christian.jpg',
            value: 'christian'
          },
          {
            label: 'Matt',
            image: './images/avatar/small/matt.jpg',
            value: 'matt'
          },
          {
            label: 'Justen Kitsune',
            image: './images/avatar/small/justen.jpg',
            value: 'justen'
          }
        ]
      </script>
    </code></pre>
    </div>
  </section>

  <script>
    this.dropdownItems = [
      {
        label: 'Gender',
        value: null,
        default: true
      },
      {
        label: 'Male',
        value: 1
      },
      {
        label: 'Female',
        value: 2
      }
    ]
    this.dropdownItems9 = [
      {
        label: 'Select Friend',
        value: null,
        default: true
      },
      {
        label: 'Jenny Hess',
        image: './images/avatar/small/jenny.jpg',
        value: 'jenny'
      },
      {
        label: 'Elliot Fu',
        image: './images/avatar/small/elliot.jpg',
        value: 'elliot'
      },
      {
        label: 'Stevie Feliciano',
        image: './images/avatar/small/stevie.jpg',
        value: 'stevie'
      },
      {
        label: 'Christian',
        image: './images/avatar/small/christian.jpg',
        value: 'christian'
      },
      {
        label: 'Matt',
        image: './images/avatar/small/matt.jpg',
        value: 'matt'
      },
      {
        label: 'Justen Kitsune',
        image: './images/avatar/small/justen.jpg',
        value: 'justen'
      }
    ]
  </script>
</demo-dropdown-selection>
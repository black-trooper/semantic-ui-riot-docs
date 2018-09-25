<dropdown-image>
  <section-header title="Image">A dropdown menu can contain an image.</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown items="{ dropdownItems }"></su-dropdown>
  
        <script>
          this.dropdownItems = [
            {
              label: 'Add User',
              value: null,
              default: true
            },
            {
              label: 'People You Might Know',
              header: true
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
              label: 'Your Friends\' Friends',
              header: true
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
        label: 'Add User',
        value: null,
        default: true
      },
      {
        label: 'People You Might Know',
        header: true
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
        label: 'Your Friends\' Friends',
        header: true
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
</dropdown-image>
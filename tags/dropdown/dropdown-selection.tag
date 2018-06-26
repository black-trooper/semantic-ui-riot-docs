<dropdown-selection>
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
      <pre class="prettyprint"><code>
        <su-dropdown items="{ dropdownItems }"></su-dropdown>

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
        </script>
      </code></pre>
    </div>
  </section>

  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItemsFluid }" class="fluid"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-dropdown items="{ dropdownItemsFluid }" class="fluid" ></su-dropdown>

        <script>
          this.dropdownItemsFluid = [
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

  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-select items="{ birthYears }"></su-select>
      <button id="hoge">change</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-select items="{ birthYears }"></su-select>
        <script>
          this.birthYears = [
            {
              label: 'Select birth year',
              value: 'a',
              default: true
            },
            { label: '1950', value: '1950' },
            { label: '1951', value: '1951' },
            { label: '1952', value: '1952' },
            { label: '1953', value: '1953' },
            { label: '1954', value: '1954' },
            { label: '1955', value: '1955' },
            { label: '1956', value: '1956' },
            { label: '1957', value: '1957' },
            { label: '1958', value: '1958' },
            { label: '1959', value: '1959' },
            { label: '1960', value: '1960' },
            { label: '1961', value: '1961' },
            { label: '1962', value: '1962' },
            { label: '1963', value: '1963' },
            { label: '1964', value: '1964' },
            { label: '1965', value: '1965' },
            { label: '1966', value: '1966' },
            { label: '1967', value: '1967' },
            { label: '1968', value: '1968' },
            { label: '1969', value: '1969' },
            { label: '1970', value: '1970' },
            { label: '1971', value: '1971' },
            { label: '1972', value: '1972' },
            { label: '1973', value: '1973' },
            { label: '1974', value: '1974' },
            { label: '1975', value: '1975' },
            { label: '1976', value: '1976' },
            { label: '1977', value: '1977' },
            { label: '1978', value: '1978' },
            { label: '1979', value: '1979' },
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

    this.dropdownItemsFluid = [
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

    this.birthYears = [
      {
        label: 'Select birth year',
        value: null,
        default: true
      },
      { label: '1950-', value: '1950' },
      { label: '1951-', value: '1951' },
      { label: '1952-', value: '1952' },
      { label: '1953-', value: '1953' },
      { label: '1954-', value: '1954' },
      { label: '1955', value: '1955' },
      { label: '1956', value: '1956' },
      { label: '1957', value: '1957' },
      { label: '1958', value: '1958' },
      { label: '1959', value: '1959' },
      { label: '1960', value: '1960' },
      { label: '1961', value: '1961' },
      { label: '1962', value: '1962' },
      { label: '1963', value: '1963' },
      { label: '1964', value: '1964' },
      { label: '1965', value: '1965' },
      { label: '1966', value: '1966' },
      { label: '1967', value: '1967' },
      { label: '1968', value: '1968' },
      { label: '1969', value: '1969' },
      { label: '1970', value: '1970' },
      { label: '1971', value: '1971' },
      { label: '1972', value: '1972' },
      { label: '1973', value: '1973' },
      { label: '1974', value: '1974' },
      { label: '1975', value: '1975' },
      { label: '1976', value: '1976' },
      { label: '1977', value: '1977' },
      { label: '1978', value: '1978' },
      { label: '1979', value: '1979' },
    ]
  </script>
</dropdown-selection>
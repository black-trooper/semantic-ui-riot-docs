<dropdown-header>
  <section-header title="Header">A dropdown menu can contain a header</section-header>
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
              label: 'Filter',
              value: null,
              default: true
            },
            {
              label: 'Filter by tag',
              icon: 'tags',
              header: true
            },
            {
              label: 'Important',
              value: 1
            },
            {
              label: 'Announcement',
              value: 2
            },
            {
              label: 'Discussion',
              value: 3
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
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
          <su-select items="{ birthYears }"></su-select>
          <script>
            this.birthYears = [
              {
                label: 'Select birth year',
                value: null,
                default: true
              },
            ]
          </script>
        </code></pre>
    </div>
  </section>

  <script>
    this.dropdownItems = [
      {
        label: 'Filter',
        value: null,
        default: true
      },
      {
        label: 'Filter by tag',
        icon: 'tags',
        header: true
      },
      {
        label: 'Important',
        value: 1
      },
      {
        label: 'Announcement',
        value: 2
      },
      {
        label: 'Discussion',
        value: 3
      }
    ]

    this.birthYears = [
      {
        label: 'Select birth year',
        value: null,
        default: true
      },
      {
        label: '1950s', items: [
          { label: '1950', value: '1950' },
          { label: '1951', value: '1951' },
          { label: '1952', value: '1952' },
          { label: '1953', value: '1953' },
          { label: '1954', value: '1954' },
          { label: '1955', value: '1955' },
          { label: '1956', value: '1956' },
          { label: '1957', value: '1957' },
          { label: '1958', value: '1958' },
          { label: '1959', value: '1959' }]
      },
      {
        label: '1960s', items: [
          { label: '1960', value: '1960' },
          { label: '1961', value: '1961' },
          { label: '1962', value: '1962' },
          { label: '1963', value: '1963' },
          { label: '1964', value: '1964' },
          { label: '1965', value: '1965' },
          { label: '1966', value: '1966' },
          { label: '1967', value: '1967' },
          { label: '1968', value: '1968' },
          { label: '1969', value: '1969' }]
      },
      {
        label: '1970s', items: [
          { label: '1970', value: '1970' },
          { label: '1971', value: '1971' },
          { label: '1972', value: '1972' },
          { label: '1973', value: '1973' },
          { label: '1974', value: '1974' },
          { label: '1975', value: '1975' },
          { label: '1976', value: '1976' },
          { label: '1977', value: '1977' },
          { label: '1978', value: '1978' },
          { label: '1979', value: '1979' }]
      },
      {
        label: '1980s', items: [
          { label: '1980', value: '1980' },
          { label: '1981', value: '1981' },
          { label: '1982', value: '1982' },
          { label: '1983', value: '1983' },
          { label: '1984', value: '1984' },
          { label: '1985', value: '1985' },
          { label: '1986', value: '1986' },
          { label: '1987', value: '1987' },
          { label: '1988', value: '1988' },
          { label: '1989', value: '1989' }]
      },
      {
        label: '1990s', items: [
          { label: '1990', value: '1990' },
          { label: '1991', value: '1991' },
          { label: '1992', value: '1992' },
          { label: '1993', value: '1993' },
          { label: '1994', value: '1994' },
          { label: '1995', value: '1995' },
          { label: '1996', value: '1996' },
          { label: '1997', value: '1997' },
          { label: '1998', value: '1998' },
          { label: '1999', value: '1999' }]
      },
      {
        label: '2000s', items: [
          { label: '2000', value: '2000' },
          { label: '2001', value: '2001' },
          { label: '2002', value: '2002' },
          { label: '2003', value: '2003' },
          { label: '2004', value: '2004' },
          { label: '2005', value: '2005' },
          { label: '2006', value: '2006' },
          { label: '2007', value: '2007' },
          { label: '2008', value: '2008' },
          { label: '2009', value: '2009' }]
      },
    ]
  </script>
</dropdown-header>
<navigation>

  <div class="ui fixed inverted main menu">
    <div class="ui container">
      <a class="launch icon item" click="{ toggleMenu }">
        <i class="content icon"></i>
      </a>

      <div class="right menu">
        <div class="vertically fitted borderless item">
          <strong>Semantic UI Riot
            <small>
              <small>
                <em>{ version }</em>
              </small>
            </small>
          </strong>
        </div>
      </div>
    </div>
  </div>

  <div class="ui inverted vertical left fixed menu" show="{ menuVisible || isAlwaysMenuVisible() }">
    <div class="item">
      <strong>Semantic UI Riot
        <small>
          <small>
            <em>{ version }</em>
          </small>
        </small>
      </strong>
    </div>

    <div class="item">
      <div class="header">Getting Started</div>
      <div class="menu">
        <a class="item" href="./">Introduction</a>
        <a href="https://github.com/black-trooper/semantic-ui-riot" class="item">
          <i aria-hidden="true" class="github icon"></i>
          GitHub
        </a>
      </div>
    </div>

    <div class="item">
      <div class="header">Module</div>
      <div class="menu">
        <a class="item" click="{ hideMenu }" href="demo-accordion">Accordion</a>
        <a class="item" click="{ hideMenu }" href="demo-checkbox">Checkbox</a>
        <a class="item" click="{ hideMenu }" href="demo-datepicker">Datepicker</a>
        <a class="item" click="{ hideMenu }" href="demo-dropdown">Dropdown</a>
        <a class="item" click="{ hideMenu }" href="demo-modal">Modal</a>
        <a class="item" click="{ hideMenu }" href="demo-popup">Popup</a>
        <a class="item" click="{ hideMenu }" href="demo-radio">Radio</a>
        <a class="item" click="{ hideMenu }" href="demo-tab">Tab</a>
      </div>
    </div>
  </div>

  <style>
    .fixed.main.menu {
      z-index: 102;
    }

    @media only screen and (min-width: 1145px) {
      .fixed.main.menu {
        display: none;
      }
      .fixed.left.menu {
        display: block;
      }
    }
  </style>

  <script>
    const self = this
    let timer = 0
    this.menuVisible = false
    this.version = require('../package.json').dependencies['semantic-ui-riot']

    this.on('mount', () => {
      window.addEventListener('resize', function () {
        if (timer > 0) {
          clearTimeout(timer)
        }

        timer = setTimeout(function () {
          self.update()
        }, 200)
      })
    })

    this.isAlwaysMenuVisible = () => {
      return parseInt(window.innerWidth) > 1145
    }

    this.toggleMenu = () => {
      this.menuVisible = !this.menuVisible
    }

    this.hideMenu = () => {
      this.menuVisible = false
    }
  </script>
</navigation>
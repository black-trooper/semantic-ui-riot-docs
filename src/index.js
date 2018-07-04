import riot from 'riot'
import route from 'riot-route'
import 'semantic-ui-riot'

import '../tags/introduction.tag'
import '../tags/navigation.tag'
import '../tags/content-navigation.tag'
import '../tags/section-header.tag'
import '../tags/demo-accordion.tag'
import '../tags/demo-checkbox.tag'
import '../tags/demo-datepicker.tag'
import '../tags/demo-dropdown.tag'
import '../tags/demo-modal.tag'
import '../tags/demo-popup.tag'
import '../tags/demo-radio.tag'
import '../tags/demo-tab.tag'

const redirect = sessionStorage.redirect
delete sessionStorage.redirect
if (redirect && redirect !== location.href) {
  history.replaceState(null, null, redirect)
}

route('', () => {
  riot.mount('content', 'root')
})

route(collection => {
  riot.mount('content', collection)
})

route.base('/semantic-ui-riot-docs/')
route.start(true)

riot.mount('*')

riot.mixin({
  init: function () {
    this.on('mount', () => {
      if (typeof PR !== 'undefined')
        PR.prettyPrint(false)
    })
  },

  toggleExample: event => {
    const childs = event.target.parentElement.parentElement.childNodes
    const segments = Array.from(childs).filter(element => element.classList && element.classList.contains('segment'))
    if (segments[2].classList.contains('hidden')) {
      segments[1].classList.remove('bottom')
      segments[2].classList.remove('hidden')
    } else {
      segments[1].classList.remove('attached')
      segments[1].classList.add('bottom')
      segments[1].classList.add('attached')
      segments[2].classList.add('hidden')
    }
  },

  extractNavigation: element => {
    let navigation = []
    let section
    element.querySelectorAll('h2, h3').forEach(item => {
      if (item.tagName.toLowerCase() == 'h2') {
        if (section) {
          navigation.push(section)
        }
        section = {}
        section.header = item.innerText
        section.items = []
      } else {
        section.items.push(item.innerText)
      }
    })
    navigation.push(section)
    return navigation
  },
})
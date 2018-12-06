import riot from 'riot'
import route from 'riot-route'
import 'semantic-ui-riot'
import prism from 'prismjs'
import 'prismjs/themes/prism-tomorrow.css'
import './common.css'

import '../tags/introduction.tag'
import '../tags/navigation.tag'
import '../tags/content-navigation.tag'
import '../tags/section-header.tag'
import '../tags/demo-accordion.tag'
import '../tags/demo-alert.tag'
import '../tags/demo-checkbox.tag'
import '../tags/demo-confirm.tag'
import '../tags/demo-datepicker.tag'
import '../tags/demo-dropdown.tag'
import '../tags/demo-modal.tag'
import '../tags/demo-pagination.tag'
import '../tags/demo-popup.tag'
import '../tags/demo-progress.tag'
import '../tags/demo-radio.tag'
import '../tags/demo-rating.tag'
import '../tags/demo-tab.tag'
import '../tags/demo-table.tag'
import '../tags/demo-toast.tag'

// Initialize Firebase
var config = {
  apiKey: "AIzaSyAVTZ-XoXjQt2bQgBvsoUuVeTs33c2C-HE",
  authDomain: "semantic-ui-riot.firebaseapp.com",
  databaseURL: "https://semantic-ui-riot.firebaseio.com",
  projectId: "semantic-ui-riot",
  storageBucket: "semantic-ui-riot.appspot.com",
  messagingSenderId: "515322128942"
};
firebase.initializeApp(config);

global.observable = riot.observable()

route('', () => {
  document.title = 'Semantic UI Riot'
  riot.mount('content', 'introduction')
})

route('index.html', () => {
  document.title = 'Semantic UI Riot'
  riot.mount('content', 'introduction')
})

route((collection, title) => {
  if (!title) {
    window.scroll(0, 0);
    observable.trigger('routing', collection)

    const url = collection.match(/demo-([^\/\?]*)/)[1];
    const pageTitle = url.charAt(0).toUpperCase() + url.slice(1)
    document.title = `${pageTitle} | Semantic UI Riot`
  }
  riot.mount('content', collection)
})

route.base('/')
route.start(true)

riot.mixin({
  init: function () {
    this.on('mount', () => {
      prism.highlightAll()
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

  kebab: target => {
    return target.replace(/([a-z])([A-Z])/g, '$1-$2').replace(/\s+/g, '-').toLowerCase()
  },
})

riot.mount('*')

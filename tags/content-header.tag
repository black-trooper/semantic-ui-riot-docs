<content-header class="ui masthead vertical segment">
  <div>
    <h1 class="ui header">
      { pageSubject }
      <div class="sub header">{ pageDescription }</div>
    </h1>
  </div>

  <script>
    import i18n from '../i18n/locale-en.json'

    this.on('mount', () => {
      if (opts.page) {
        this.pageSubject = subject(opts.page)
        this.pageDescription = description(opts.page)
        this.update()
      }
    })

    const subject = url => {
      return i18n[url].subject
    }

    const description = url => {
      return i18n[url].description
    }
  </script>
</content-header>
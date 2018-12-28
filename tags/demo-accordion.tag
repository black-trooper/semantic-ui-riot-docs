<demo-accordion>
  <div class="main container">
    <content-navigation title="Accordion" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <accordion-standard></accordion-standard>

    <!-- ====================================================== -->
    <!--                                                 Styled -->
    <!--                                                 ====== -->
    <accordion-styled></accordion-styled>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                                  Fluid -->
    <!--                                                  ===== -->
    <accordion-fluid></accordion-fluid>

    <!-- ====================================================== -->
    <!--                                               Inverted -->
    <!--                                               ======== -->
    <accordion-inverted></accordion-inverted>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                                 Nested -->
    <!--                                                 ====== -->
    <accordion-nested></accordion-nested>

    <!-- ====================================================== -->
    <!--                                                   Menu -->
    <!--                                                   ==== -->
    <accordion-menu></accordion-menu>
  </div>

  <script>
    import './accordion/accordion-standard.tag'
    import './accordion/accordion-styled.tag'
    import './accordion/accordion-fluid.tag'
    import './accordion/accordion-inverted.tag'
    import './accordion/accordion-nested.tag'
    import './accordion/accordion-menu.tag'

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })
  </script>
</demo-accordion>
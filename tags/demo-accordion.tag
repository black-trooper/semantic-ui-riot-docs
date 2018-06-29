<demo-accordion>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Accordion
      <div class="sub header">An accordion allows users to toggle the display of sections of content</div>
    </h1>
  </div>

  <div class="main container">
    <div class="ui dividing right rail">
      <div class="sticky">
        <h4 class="ui header">Accordion</h4>
        <div class="ui vertical text menu">
          <div class="item">
            <div class="header">Types</div>
            <div class="menu">
              <a class="item" href="#standard">Standard</a>
              <a class="item" href="#styled">Styled</a>
            </div>
          </div>
          <div class="item">
            <div class="header">Variations</div>
            <div class="menu">
              <a class="item" href="#fluid">Fluid</a>
              <a class="item" href="#inverted">Inverted</a>
              <a class="item" href="#nested">Nested</a>
              <a class="item" href="#menu">Menu</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types
      <a class="anchor" id="types"></a>
    </h2>

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
    <h2 class="ui dividing header">Variations
      <a class="anchor" id="variations"></a>
    </h2>

    <!-- ====================================================== -->
    <!--                                                  Fluid -->
    <!--                                                  ===== -->
    <accordion-fluid></accordion-fluid>

    <!-- ====================================================== -->
    <!--                                               Inverted -->
    <!--                                               ======== -->
    <accordion-inverted></accordion-inverted>

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
  </script>
</demo-accordion>
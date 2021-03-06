Feature: Focus order

  Actionable content must be navigable in a meaningful sequence.

  Mouse or touch users determine the order in which they interact with
  actionable elements. Keyboard and screen reader users depend on the focus
  order provided by the content. For example, navigating a form can be
  disorientating if the sequence jumps between unrelated elements.

  Content order will normally dictate focus order. However, this may not always
  be the case. Actionable content must follow a logical sequence that will
  maintain the meaning and operation of the content.

  Consideration should be given to anything that programmatically moves the
  focus for customised or enhanced features, e.g. menu drawers that close after
  moving focus onward from the last item.

  HTML Applicability
  ==================

  Positive `tabindex` attribute values **must not** be used to create a logical
  tab order.

  Typical BBC pages are made up of several shared components (Global navigation,
  page content, share tools, location service widgets, etc.) so no one piece of
  code has complete awareness of the content of the page or when the content
  updates. Positive `tabindex` values results in unpredictable tab order that do
  not occur if the natural order of content is relied upon.

  Background:
    Given I am performing a manual test of the "Focus: Focus order: Actionable content must be navigable in a meaningful sequence" standard
    And I have been asked "Is actionable content navigable in a meaningful sequence?"

  @html @manual
  Scenario: Navigable in a meaningful sequence (manual pass)
    When I answer "Yes"
    Then the manual test passes

  @html @manual
  Scenario: Navigable in a meaningless sequence (manual fail)
    When I answer "No"
    Then the manual test fails

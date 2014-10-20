describe "Math Problems UI", ->
  Given -> @$app = affix('.main')

  Given -> app.render()

  describe 'fetching a new problem', ->
    Given -> @$button = @$app.affix('button.new-problem')
    When -> @$button.trigger(jQuery.Event('click'))
    Then ->

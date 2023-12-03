import lustre
import lustre/attribute.{attribute}
import lustre/element.{type Element}
import lustre/element/html
import lustre/ui/button.{button}
import lustre/ui/centre.{centre}
import lustre/ui/cluster.{cluster}
import lustre/ui/group.{group}
import lustre/ui/icon
import lustre/ui/stack.{stack}
import lustre/ui/tag.{tag}

// MAIN ------------------------------------------------------------------------

pub fn main(selector: String) {
  let app = lustre.simple(init, update, view)
  let assert Ok(_) = lustre.start(app, selector, Nil)

  Nil
}

// MODEL -----------------------------------------------------------------------

type Model {
  Model
}

fn init(_) -> Model {
  Model
}

// UPDATE ----------------------------------------------------------------------

type Msg {
  None
}

fn update(model: Model, msg: Msg) -> Model {
  case msg {
    _ -> model
  }
}

// VIEW ------------------------------------------------------------------------

fn view(model: Model) -> Element(Msg) {
  stack(
    [],
    [
      stack(
        [],
        [
          html.p([], [element.text("Icons:")]),
          cluster(
            [],
            [
              icon.font_style([]),
              icon.letter_spacing([]),
              icon.text_align_right([]),
              icon.arrow_right([]),
              icon.arrow_top_left([]),
              icon.chevron_up([]),
              icon.width([]),
              icon.stack([]),
              icon.circle([]),
              icon.zoom_in([]),
              icon.cursor_text([]),
              icon.play([]),
              icon.dots_horizontal([]),
              icon.check([]),
              icon.chat_bubble([]),
              icon.accessibility([]),
              icon.bar_chart([]),
              icon.pie_chart([]),
            ],
          ),
        ],
      ),
      stack(
        [],
        [
          html.p([], [element.text("Buttons:")]),
          cluster(
            [cluster.stretch()],
            [
              button([button.clear()], [element.text("these")]),
              button([button.soft()], [element.text("are")]),
              button([button.solid()], [element.text("some")]),
              button([button.error()], [element.text("buttons")]),
              button([button.success()], [centre([], icon.share([]))]),
            ],
          ),
        ],
      ),
      stack(
        [],
        [
          html.p([], [element.text("Button groups:")]),
          group(
            [],
            [
              button([], [element.text("these")]),
              button([], [element.text("are")]),
              button([], [element.text("some")]),
              button([], [element.text("buttons")]),
            ],
          ),
        ],
      ),
      stack(
        [],
        [
          html.p([], [element.text("Tags:")]),
          cluster(
            [],
            [
              tag([], [element.text("erlang")]),
              tag([], [element.text("elixir")]),
              tag(
                [attribute("tabindex", "0")],
                [element.text("gleam"), icon.cross([])],
              ),
              tag([], [element.text("javascript")]),
            ],
          ),
        ],
      ),
    ],
  )
}
```julia
rectangle
(
  # use this, but not 2 or 3 simultaneously, only 1
  box_sizing = "content_box",
  box_sizing = "border_box",
  box_sizing = "initial",
  box_sizing = "inherit",

  size = (width = 40 "vmax", height = 60 "vmin"),
  size = (40 "vmax", 60 "vmin"),

  width = 40 "vmax",
  height = 60 "vmin",


  # or this, but not 2 or 3 simultaneously, only 1
  size_container = (width_container = 40 "vmax", height_container = 60 "vmin"),
  size_container = (40 "vmax", 60 "vmin"),

  width_container = 40 "vmax",
  height_container = 60 "vmin",


  # or this, but not 2 or 3 simultaneously, only 1
  size_content = (width_content = 40 "vmax", height_content = 60 "vmin"),
  size_content = (40 "vmax", 60 "vmin"),

  width_content = 40 "vmax",
  height_content = 60 "vmin",

  ########################################################################

  padding = (top = 10 "px", right = 50 "px", bottom = 30 "px", left = 15 "px"),
  padding = (10 "px", 50 "px", 30 "px", 15 "px"),
  padding = (top = 10 "px", horizontal = 50 "px", bottom = 30 "px"),
  padding = (10 "px", 50 "px", 30 "px"),
  padding = (vertical = 10 "px", horizontal = 50 "px"),
  padding = (10 "px", 50 "px"),
  padding = (all = 10 "px"),
  padding = (10 "px"),

  padding = (top = 10 "px", left = 15 "px"),
  padding = (bottom = 30 "px", horizontal = 50 "px"),

  # vertical should not be used with top or bottom
  # horizontal should not be used with right or left
)
do
  # content
end
```

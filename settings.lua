data:extend(
  {
    {
      type = "bool-setting",
      name = "ERPC-K2-integration-integrate-spacex",
      setting_type = "startup",
      order = "a",
      default_value = true
    },
    {
      type = "bool-setting",
      name = "ERPC-K2-integration-integrate-ioncannon",
      setting_type = "startup",
      order = "b",
      default_value = true
    },
    {
      type = "bool-setting",
      name = "ERPC-K2-integration-refurbish-not-guaranteed",
      setting_type = "startup",
      order = "c",
      default_value = true
    },
    {
      type = "double-setting",
      name = "ERPC-K2-integration-refurbish-chance",
      setting_type = "startup",
      order = "d",
      default_value = 0.9,
      minimum_value = 0.1,
      maximum_value = 1
    },
    {
      type = "bool-setting",
      name = "ERPC-K2-integration-use-k2-tiles",
      setting_type = "startup",
      order = "e",
      default_value = true
    }
  }
)

defmodule ApiBankWeb.Router do
  use ApiBankWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiBankWeb do
    pipe_through :api
  end
end

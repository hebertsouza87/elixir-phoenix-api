defmodule RestApiWeb.Router do
  use RestApiWeb, :router

  pipeline :api do
    plug :accepts, ["json-api"]
  end

  scope "/api", RestApiWeb do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/posts", PostController, only: [:index, :show]
    end

  end
end

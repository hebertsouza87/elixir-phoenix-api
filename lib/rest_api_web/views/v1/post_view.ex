defmodule RestApiWeb.V1.PostView do
  use RestApiWeb, :view
  alias RestApiWeb.V1.PostView

  attributes [:title, :is_published]

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      is_published: post.is_published}
  end
end

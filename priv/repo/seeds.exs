alias RestApi.Repo
alias RestApi.Blog.Post

Repo.insert!(%Post{title: "Teste 1", is_published: true})
Repo.insert!(%Post{title: "Teste 2", is_published: false})
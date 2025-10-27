#let name = "Tom Houlé"
#let email = "tom@tomhoule.com"
#let github = "tomhoule"
#let linkedin = "tom-houlé"
#let personal-site = "tomhoule.com"

#let graphql-composition-crate = "https://crates.io/crates/graphql-composition"
#let graphql-conf-talks = "TODO"

// #set text(font: "Crimson Pro", size: 12pt, weight: "light")
#set text(font: "Crimson Pro", size: 12pt)
// #set text(font: "Vollkorn", size: 11pt)
// #set text(font: "EB Garamond", size: 12pt)
// #set text(font: "Tex Gyre Pagella", size: 9pt)
// #set text(font: "Source Serif Pro", size: 9pt)
// #set text(font: "Inter", size: 8pt)

#set page(paper: "a4", margin: (x: 1.6cm, y: 1.3cm), numbering: "1/1", number-align: right)

#let accent-color = rgb(0x26, 0x42, 0x8b)
// #let accent-color = rgb(0, 0, 155)

#show heading.where(depth: 2): it => {
  set text(weight: "medium", size: 14pt, accent-color)
  block(stroke: (bottom: (paint: rgb(100, 100, 100), thickness: .5pt)), width: 100%, inset: (bottom: 6pt))[
    #it.body
  ]
}

#let href = (dest, body) => link(dest, underline(body))

#let work(title: "", location: "", company: "", start-date: "", end-date: "", body) = {
  block(below: 20pt)[
    *#title* #h(1fr) #start-date – #end-date\
    #company #h(1fr) #location\

    #body
  ]
}

#let degree(institution: "", start-date: "", end-date: "", degree: "") = {
  [
    *#degree* #h(1fr) #start-date – #end-date\
    #institution
  ]
}

#let interest(body) = [- #body]

// ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-
//    !!!     Here starts the document      !!!
// ~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-

#text(size: 24pt, name) #h(1fr)
#text(size: 1em)[
  Berlin, DE |
  #href("mailto:" + email)[#email] |
  #href("https://github.com/" +   github)[#box(image(width: .8em, "images/github-favicon.png")) #github] |
  #href("https://linkedin.com/in/" + linkedin)[#box(image(width: .8em, "images/linkedin-favicon.png")) #linkedin]
]

#v(10pt)

== Relevant Professional Experience

#work(
  title: "Lead Engineer",
  location: "Remote",
  company: href("https://grafbase.com")[Grafbase],
  start-date: "Oct. 2023",
  end-date: "Present",
)[
- Engineer in a small, high ownership and high velocity team.
- Participated in the design and implementation of Grafbase Gateway, a GraphQL Federation Gateway that demonstrated best-in-class runtime and query planning performance. Co-developed the WebAssembly (WASI preview 2) based extensions system.
- Developed features in close contact with Enterprise customers. For example a revamp of the authentication and authorization architecture of the Grafbase platform for self-hosted scenarios, with deep integration with the enterprise's identity provider and policy engines.
- Led the design and development of schema evolution features, like schema proposals and usage-based (ClickHouse) breaking change analysis.
- Started and maintained the #href(graphql-composition-crate)[first and only Rust implementation of federated GraphQL composition].
- Engaged with the GraphQL community in working groups (Composite Schemas) and giving #href(graphql-conf-talks)[talks] at GraphQL Conf 2025.
- Owned Kubernetes deployments of the Grafbase platform, monitoring, integrations, OAuth/OIDC, ...
]

#work(
  title: "Senior Engineer, Tech Lead",
  location: "Berlin, Remote",
  company: href("https://www.prisma.io/")[Prisma],
  start-date: "Sept. 2019",
  end-date: "Oct. 2023",
)[
- Second Rust hire at Prisma. Started on the Scala to Rust migration (Prisma 1 to Prisma 2), then worked on the Rust components of the ORM over four years.
- Owned the size project leading to considerable binary size reductions (in particular for serverless use cases), and spearheaded the WebAssembly migration effort.
- Schema Team, Prisma Schema Language, ORM Team.
- #href("https://npm-stat.com/charts.html?package=prisma&from=2019-09-01&to=2023-10-01")[400x the number of users] of the open source ORM in that time.
- Lead features, wrote RFCs
- Reworked the Prisma Schema Language (PSL) implementation to use traditional programming language parsing techniques, massively improving performance and ease of implementing validations.
- Built the language intelligence infrastructure for the PSL LSP server and the PSL formatter.
- Introduced rigorous benchmarking in different dimensions (release sizes, compile time, resource usage, performance).
- Engaged in hiring for ICs, Engineering and Product Managers.
- Subsequently, worked on the Client Team, responsible for the Query Engine behind Prisma Client.
- Proposed and ran Rust and database engineering learning groups for engineers.
- Still #href("https://github.com/prisma/prisma-engines/graphs/contributors")[all time top contributor to prisma-engines] to this day.
- Led high impact projects: native database types support, Postgres extensions,
]

//   // Previously Tech Lead of the Schema Team. The team is responsible for the Migrate
//   // and Introspection products, as well as the general space of database schema
//   // management and the Prisma Schema Language implementation and tooling.

//   // Took a large part in the design and implementation of the new Migrate
//   // product, and drove many smaller projects to completion (performance
//   // analysis, extended database type support, testing infrastructure, …).
//   // Frequent collaboration with external stakeholders (users, framework
//   // authors, database drivers). Significant amount of discovery and feature
//   // design work. Representing Prisma on the board of the GraphQL Foundation.

//   // Code samples: \\
//   // \url{https://github.com/prisma/prisma-engines/commits?author=tomhoule}

#work(
  title: "Engineer, Senior Engineer, Tech Lead",
  location: "Berlin",
  company: "store2be",
  start-date: "Oct. 2016",
  end-date: "Sept. 2019",
)[
- Second engineering hire as Full Stack Engineer on a B2B booking platform with Ruby on Rails, Postgres and Kubernetes on the backend, and React on the frontend.
- Built a PDF contract and invoice generation service with per-customer templates support using Rust with futures 0.1 and tokio.
- Introduced and drove adoption of TypeScript, and later GraphQL to the team.
- As Tech Lead for the whole backend team, I was responsible for hiring, one-on-ones, career planning, formal feedback rounds, and mentoring.
- Took an active part in infrastructure work (notably, migration from Heroku to Kubernetes and Terraform.
- Bolstered collaboration practices: regular pair programming, systematic, thorough code reviews, regular 1:1s, TDD, product-oriented thinking.
]

#work(
  title: "Web Developer and Project Manager",
  location: "Lyon",
  company: "Médiéval AFDP",
  start-date: "March 2015",
  end-date: "Oct. 2016",
)[
- Developed new internal web applications, new public-facing web-
  sites and enhanced older websites as the single full-time developer in a heritage-focused company working mostly for the
  public sector.
- Took on other tasks occasionally, such as web
  scraping and batch data manipulation.
- Set up internal CI with Jenkins, Docker and Ansible.
- Got familiar with automated testing.
- Python (Django), React, Typescript, PHP, PostgreSQL, Ansible, Docker.
]
  //   Developed new web applications and enhanced older websites as the only
  //   full-time developer in a heritage-focused company working mostly for
  //   the public sector. Performed other tasks occasionally, such as web
  //   scraping and batch data manipulation. A few projects:
  // %
  //   \begin{itemize}
  //   \item
  //     Cap Moderne: a relatively traditional website for an important cultural site
  //     on the French Riviera. Backend development, Django. $\rightarrow$ \url{https://capmoderne.com}
  //   \item
  //     Several web applications, including two used internally to manage public
  //     procurement offers and mailing lists. Django, Django REST Framework,
  //     React, Typescript.
  //   \item
  //     Safari de Peaugres: enhancement and modification of a legacy PHP website,
  //     with an new section written as an embedded React application.
  //   \end{itemize}

  // 2013 $\diamond$ Internship at the Fondation Alliance Française (Paris), working on a
  // Foreign Affairs Ministry program for professional training in the French
  // foreign cultural network.


// == Projects

// #project(
//   role: "Main author",
//   name: "graphql-composition",
//   start-date: "2023"
//   end-date: "Present",
//   // URL is optional
//   url: "crates.io/crates/graphql-composition",
// )

// #project(
//   role: "Main author",
//   name: "graphql-client",
//   dates: dates-helper(start-date: "2018"
//   end-date: "Present"),
//   // URL is optional
//   url: "github.com/graphql-rust/graphql-client",
// )


// // Certificates:
//   // \paragraph{Online course certificates} Functional programming principles in Scala (EPFL / Coursera), Functional programming design in Scala (EPFL / Coursera), Parallel programming (EPFL / Coursera)

== Interests

#interest[Long lived interest in *databases* from a practical point of view: how they are implemented, how they fit in a larger system.]
#interest[
  Long time *Rust* user who saw the language and ecosystem develop
  from the very early stages. I have been writing Rust code regularly since 2016–2017, and it has been my primary language at work since I joined Prisma in 2019. You can find more and less recent samples of my
  code on GitHub.
]

//   // More recently, I am having fun with \textbf{formal methods}. Decent working
//   // grasp of proof assistants (Lean, Coq, Agda) and the underlying theory.  Not
//   // as knowledgeable, but interested in automatic verification.

//   // Familiar and comfortable with modern development and project management
//   // practices, more DevOps-related concerns like infrastructure management
//   // (Docker, k8s, also Ansible in the past), nix, the web plaftorm, \LaTeX...

== Skills

- *Languages*: English, German, French, Chinese (HSK level 6 in 2015), Japanese (JLPT N1 in 2015)
- *Programming languages*: Rust, SQL, Lean, TypeScript, Javascript, Python, Ruby, Scala, C, C++, etc.
- *Technologies*: Database Engineering, Linux, Kubernetes, Docker, Linux, DuckDB, GraphQL, etc.

== Degrees

#degree(
  institution: "Université Lyon II",
  // location: "Lyon",
  start-date: "Sept. 2014",
  end-date: "Sept. 2015",
  degree: "Master’s Degree",
)

#degree(
  institution: "Institut d’Études Politiques Aix-en-Provence",
  // location: "Aix-en-Provence",
  start-date: "Sept. 2008",
  end-date: "May 2013",
  degree: "Master’s Degree",
)

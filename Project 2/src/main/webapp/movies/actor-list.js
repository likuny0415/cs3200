class ActorList extends React.Component {
  state = {
    actors: []
  }

  findAllActors = () =>
      findAllActors()
      .then(actors => this.setState({actors}))

  findActorForMovie = () => {
    let search = window.location.search
    search = search.replace("?", "")
    search = search.split("=")
    const movieId = search[1]
    findActorsForMovies(movieId)
    .then(actors => this.setState({actors}))
  }

  componentDidMount = () => {
    let search = window.location.search
    debugger
    if(search) {
      this.findActorForMovie()
    } else {
      this.findAllActors()
    }
  }

  render() {
    return(
        <div className="container-fluid">
          <h1>Actor List</h1>
          <table className="table">
            <thead>
            <tr>
              <th>Actor ID</th>
              <th>Name</th>
              <th>Movie</th>
              <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            {
              this.state.actors.map(actor =>
                  <tr key={actor.actorId}>
                    <td>{actor.actorId}</td>
                    <td>{actor.name}</td>
                    <td>
                      <a href={`movie-editor.html?id=${actor.actorId}`}>
                        {actor.movieName}
                      </a>
                    </td>
                    <td>
                      <a className="btn btn-primary"
                         href={`actor-editor.html?sectionId=${actor.actorId}`}>
                        Edit
                      </a>
                    </td>
                  </tr>
              )
            }
            </tbody>
          </table>
        </div>
    )
  }
}

ReactDOM.render(
    <ActorList />,
    document.getElementById('root')
)

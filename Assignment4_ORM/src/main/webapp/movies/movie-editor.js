class MovieEditor extends React.Component {

  state = {
    movie: {}
  }

  findMovieById = (id) => {
    findMovieById(id)
    .then(movie => this.setState({movie}))
  }

  saveMovie = () => {
    renameMovie(this.state.movie)
  }

  componentDidMount = () => {
    const id = window.location.search.split("=")[1]
    this.findMovieById(id)
  }

  render() {
    return(
        <div className={"container"}>
          <h1>Movie Editor</h1>
          <input className="form-control" readOnly={true} value={this.state.movie.id} />
          <input
              onChange={(event) => this.setState({
                movie: {
                  ...this.state.movie,
                  title: event.target.value
                }
              })}
              className="form-control"
              value={this.state.movie.title} />
          <button onClick={this.saveMovie}>Save</button>
          <a href="movie-list.html">Back</a>
        </div>
    )
  }
}

ReactDOM.render(
    <MovieEditor/>, document.getElementById("root"))

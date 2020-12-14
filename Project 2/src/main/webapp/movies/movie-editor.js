class MovieEditor extends React.Component {
  state = {
    movie: {}
  }

  componentDidMount = () => this.findMovieById()

  findMovieById = () => {
    let search = window.location.search.split("=")
    const movieId = search[1]
    findMovieById(movieId)
    .then(movie => this.setState({movie}))
  }

  submitForm = () =>
      renameMovie(this.state.movie)
      .then(this.findMovieById)

  render() {
    return(
        <div className="container-fluid">
          <h1>Movie Editor {this.state.movie.title}</h1>
          <form>
            <input
                value={this.state.movie.id}
                className="form-control"
                readOnly={true}/>
            <input
                onChange={
                  (event) =>
                      this.setState({
                        movie: {...this.state.movie, title: event.target.value}
                      })}
                className="form-control"
                value={this.state.movie.title}/>
            <button
                type="button"
                onClick={() => this.submitForm()}
                className="btn btn-success">
              Save
            </button>
            <a className="btn btn-danger" href="movie-list.html">
              Cancel
            </a>
          </form>
          <a href={`actor-list.html?Id=${this.state.movie.id}`}>
            Actors
          </a>
        </div>
    )
  }
}

ReactDOM.render(
    <MovieEditor />,
    document.getElementById('root')
)

class FAEditor extends React.Component {

  state = {
    movie: {}
  }

  findFAById = (id) => {
    findFAById(id)
    .then(movie => this.setState({movie}))
  }

  saveFA = () => {
    updateFA(this.state.movie)
  }

  componentDidMount = () => {
    const id = window.location.search.split("=")[1]
    this.findFAById(id)
  }

  render() {
    return(
        <div className={"container"}>
          <h1>Favoriate Actor Editor</h1>
          <input className="form-control" readOnly={true} value={this.state.movie.id} />
          <input
              onChange={(event) => this.setState({
                movie: {
                  ...this.state.movie,
                  name: event.target.value
                }
              })}
              className="form-control"
              value={this.state.movie.name} />
          <button onClick={this.saveFA}>Save</button>
          <a href="FavoriateActorList.html">Back</a>
        </div>
    )
  }
}

ReactDOM.render(
    <FAEditor/>, document.getElementById("root"))

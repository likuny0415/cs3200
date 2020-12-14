class FaList extends React.Component {
  state = {
    favas: []
  }

  findAllFAs = () =>
      findAllFA()
      .then((favas) => this.setState({favas}))

  createFA = () =>
      createFA()
      .then(() => this.findAllFAs())

  deleteFA = (faId) =>
      deleteFA(faId)
      .then(() => this.findAllFAs())

  componentDidMount = () =>
      this.findAllFAs()

  render() {
    return(
        <div className="container-fluid">
          <button
              className="btn btn-success float-right"
              onClick={() => this.createFA()}>
            Create
          </button>
          <a className="btn btn-danger float-right"
             href="../movies/home.html">
            Home
          </a>
          <h1>Favoriate Actor List</h1>
          <table className="table">
            <tbody>
            {
              this.state.favas.map((fa) =>
                  <tr key={fa.id}>
                    <td>{fa.name}</td>
                    <td>
                      <a className="btn btn-primary float-right"
                         href={`fa-editor.html?id=${fa.id}`}>
                        Edit
                      </a>
                      <button className="btn btn-danger float-right"
                              onClick={() => this.deleteFA(fa.id)}>
                        Delete
                      </button>
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
    <FaList/>, document.getElementById("root"))

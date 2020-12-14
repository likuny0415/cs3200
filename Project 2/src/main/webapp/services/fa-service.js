const FIND_ALL_FA  = "http://localhost:8080/findAllFavoriateActors"
const FIND_FA_BY_ID = "http://localhost:8080/findFavoriateActorById"
const CREATE_FA_URL = "http://localhost:8080/createFavoriateActor"
const DELETE_FA_URL = "http://localhost:8080/deleteFavoriateActor"
const UPDATE_FA     = "http://localhost:8080/renameFavoriateActor"

const findAllFA = () =>
    fetch(`${FIND_ALL_FA}`)
    .then(response => response.json())

const findFAById = (faId) =>
    fetch(`${FIND_FA_BY_ID}/${faId}`)
    .then(response => response.json())

const createFA = (fa) =>
    fetch(`${CREATE_FA_URL}`)
    .then(response => response.json())

const deleteFA = (faId) =>
    fetch(`${DELETE_FA_URL}/${faId}`)

const updateFA = (fa) =>
    fetch(`${UPDATE_FA}/${fa.id}/${fa.name}`)
    .then(response => response.json())

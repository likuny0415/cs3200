const FIND_ALL_ACTORS  = "http://localhost:8080/findAllActors"
const FIND_ACTORS_BY_ID = "http://localhost:8080/findActorById"
const FIND_ACTORS_FOR_COURSE = "http://localhost:8080/findActorsForMovies"
const CREATE_ACTORS_URL = "http://localhost:8080/createActorsForMovies"
const DELETE_ACTORS_URL = "http://localhost:8080/deleteActor"
const UPDATE_ACTORS     = "http://localhost:8080/updateActor"

const findAllActors = () =>
    fetch(`${FIND_ALL_ACTORS}`)
    .then(response => response.json())

const findActorsForMovies = (courseId) =>
    fetch(`${FIND_ACTORS_FOR_COURSE}/${courseId}`)
    .then(response => response.json())

const findActorById = (sectionId) =>
    fetch(`${FIND_ACTORS_BY_ID}/${sectionId}`)
    .then(response => response.json())

const createSection = (section) =>
    fetch(`${CREATE_SECTION_URL}`)
    .then(response => response.json())

const deleteSection = (sectionId) =>
    fetch(`${DELETE_SECTION_URL}/${sectionId}`)

const updateSection = (section) =>
    fetch(`${UPDATE_ACTORS}/${section.sectionId}/${section.sectionName}`)
    .then(response => response.json())

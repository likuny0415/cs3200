package com.example.wap.daos;

import com.example.wap.models.Actor;
import com.example.wap.models.Course;
import com.example.wap.models.Movie;
import com.example.wap.models.Section;
import com.example.wap.repositories.ActorRepository;
import com.example.wap.repositories.CourseRepository;
import com.example.wap.repositories.MovieRepository;
import com.example.wap.repositories.SectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ActorDao {
  @Autowired
  ActorRepository actorRepository;
  @Autowired
  MovieRepository movieRepository;
  @GetMapping("/findAllActors")
  public Iterable<Actor> findAllSections() {
    return actorRepository.findAll();
  }
  @GetMapping("/findActorById/{aid}")
  public Actor findActorById(
      @PathVariable("aid") Integer aid) {
    return actorRepository.findById(aid).get();
  }
  @GetMapping("/findActorsForMovies/{cid}")
  public List<Actor> findActorsForMovies(
      @PathVariable("cid") Integer cid) {
    return movieRepository.findById(cid).get().getActors();
  }
  @GetMapping("/createActorsForMovies/{cid}")
  public Actor createActorsForMovies(
      @PathVariable("cid") Integer cid) {
    Movie movie = movieRepository.findById(cid).get();
    Actor actor = new Actor();
    actor.setName("New Actor");
    actor.setMovie(movie);
    actorRepository.save(actor);
    return actor;
  }
  @GetMapping("/deleteActor/{sid}")
  public void deleteActor(
      @PathVariable("sid") Integer sid) {
    actorRepository.deleteById(sid);
  }
  @GetMapping("/updateActor/{sid}/{newName}")
  public Actor updateActor(
      @PathVariable("sid") Integer sid,
      @PathVariable("newName") String newName) {
    Actor actor = actorRepository.findById(sid).get();
    actor.setName(newName);
    actorRepository.save(actor);
    return actor;
  }
}

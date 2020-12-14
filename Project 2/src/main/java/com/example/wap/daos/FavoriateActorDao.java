package com.example.wap.daos;

import com.example.wap.models.FavoriteActor;
import com.example.wap.repositories.FavoriateActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FavoriateActorDao {

  @Autowired
  FavoriateActorRepository favoriateActorRepository;

  @GetMapping("/findAllFavoriateActors")
  public Iterable<FavoriteActor> findAllFavoriateActors() {
    return favoriateActorRepository.findAll();
  }

  @GetMapping("/findFavoriateActorById/{id}")
  public FavoriteActor findFavoriateActorById(
      @PathVariable("id") Integer id) {
    return favoriateActorRepository.findById(id).get();
  }
  @GetMapping("/deleteFavoriateActor/{id}")
  public void deleteFavoriateActor(
      @PathVariable("id") Integer id) {
    favoriateActorRepository.deleteById(id);
  }
  @GetMapping("/createFavoriateActor")
  public FavoriteActor createFavoriateActor() {
    FavoriteActor actor = new FavoriteActor();
    actor.setName("Your new favoriate actor");
    return favoriateActorRepository.save(actor);
  }
  @GetMapping("/renameFavoriateActor/{id}/{newName}")
  public FavoriteActor renameFavoriateActor(
      @PathVariable("id") Integer id,
      @PathVariable("newName") String newTitle) {
    FavoriteActor actor = favoriateActorRepository.findById(id).get();
    actor.setName(newTitle);
    return favoriateActorRepository.save(actor);
  }

}

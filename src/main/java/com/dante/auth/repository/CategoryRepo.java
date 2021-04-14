package com.dante.auth.repository;

import com.dante.auth.model.Catalogue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepo extends JpaRepository<Catalogue,Integer> {

}

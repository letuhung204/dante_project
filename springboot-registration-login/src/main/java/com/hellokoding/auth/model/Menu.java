package com.hellokoding.auth.model;

import javax.persistence.*;

@Entity
@Table(name="menu")
public class Menu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String title;
    @Column
    private String description;
    @Column
    private String description2;
    @Column
    private String category;
}

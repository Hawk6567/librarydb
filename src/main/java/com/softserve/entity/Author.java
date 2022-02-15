package com.softserve.entity;

import lombok.Data;
import lombok.*;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString(of = "id")
@EqualsAndHashCode(of = "id")
@Entity
@Table(name = "Author")
public class Author {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private long id;

    @Column(name = "FirstName")
    private String firstName;

    @Column(name = "LastName")
    private String lastName;

    @Setter(AccessLevel.PRIVATE)
    @OneToMany(mappedBy = "mainAuthor", cascade = CascadeType.ALL)
    private Set<Book> books = new HashSet<>();

    @Setter(AccessLevel.PRIVATE)
    @ManyToMany(mappedBy = "co_authors",cascade = CascadeType.ALL)
//    @Cascade({ org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.MERGE, org.hibernate.annotations.CascadeType.PERSIST,org.hibernate.annotations.CascadeType.DELETE})
    private Set<Book> coAuthorBooks = new HashSet<>();

}

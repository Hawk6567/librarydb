package com.softserve.entity;

import lombok.*;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.sql.Insert;
import org.springframework.data.annotation.ReadOnlyProperty;
import org.springframework.web.bind.annotation.Mapping;


import javax.persistence.*;
import java.util.*;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(of = "id")
@ToString(of = "id")
@Entity
@Table(name = "Book")
public class Book {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private long id;

    @Column(name = "BookName")
    private String bookName;

    @Column(name = "Genre")
    private String genre;

//    @Column(name = "AuthorID")
//    private long authorId;

    @Column(name = "Count")
    private int count;
    @Column(name = "PageCount")
    private int pageCount;

    @Column(name = "Ratings")
    private Integer ratings;

    @ManyToOne
    @ReadOnlyProperty//    @Cascade(CascadeType.ALL)
    @JoinColumn(name = "AuthorID")
    private Author mainAuthor;

    @Setter(AccessLevel.PRIVATE)
    @ManyToMany
    @Cascade(CascadeType.ALL)
    @JoinTable(name = "coauthor",
            joinColumns = @JoinColumn(name = "BookID"),
            inverseJoinColumns = @JoinColumn(name = "AuthorID")
    )
    private Set<Author> co_authors = new HashSet<>();
//    @OneToMany(mappedBy = "CartBook")
//    @Cascade(CascadeType.ALL)
//    private List<Cart> cartList = new LinkedList<>();
//
//    @OneToMany(mappedBy = "FormBook")
//    @Cascade(CascadeType.ALL)
//    private List<Form> formList = new LinkedList<>();
}

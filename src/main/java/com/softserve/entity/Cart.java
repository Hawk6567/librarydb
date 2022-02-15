package com.softserve.entity;

import lombok.*;
import org.hibernate.annotations.Cascade;
import org.springframework.data.annotation.ReadOnlyProperty;

import javax.persistence.*;
@Setter
@Getter
@EqualsAndHashCode(of = "id")
@Entity
@Data
@ToString
@NoArgsConstructor
@Table(name = "Cart")
public class Cart {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private long id;
//    @ReadOnlyProperty
//    private long UserID;
//    @ReadOnlyProperty
//
//    private long BookID;
    private byte action;

    @ManyToOne
//    @ReadOnlyProperty
    @JoinColumn(name = "BookID")
    private Book CartBook;

    @ManyToOne
//    @ReadOnlyProperty
    @JoinColumn(name = "UserID")
    private User CartUser;


}

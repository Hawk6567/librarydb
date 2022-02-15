package com.softserve.entity;

import lombok.*;
import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
@ToString(of = "id")
@EqualsAndHashCode(of = "id")
@Entity
@Data
@NoArgsConstructor
@Table(name = "User")
public class User {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private long id;

    @Column(name = "FirstName")
    private String firstName;

    @Column(name = "LastName")
    private String lastName;

    @Column(name = "Age")
    private String age;


    @Column(name = "Phone")
    private String phone;

    @Column(name = "Email")
    private String email;

    @Column(name = "Password")
    private String password;

    @Column(name = "RegDate")
    private Date regDate;
    @ManyToOne
    @JoinColumn(name = "UserRoleId")
    private UserRole role;
    @Setter(AccessLevel.PRIVATE)
    @OneToMany(mappedBy = "CartUser")
    private List<Cart> cartList = new LinkedList<>();
    @Setter(AccessLevel.PRIVATE)
    @OneToMany(mappedBy = "FormUser")
    private List<Form> formList = new LinkedList<>();
}

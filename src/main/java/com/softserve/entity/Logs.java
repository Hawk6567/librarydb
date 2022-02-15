package com.softserve.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Data
@NoArgsConstructor
@Table(name = "Logs")
public class Logs {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private long id;
    @Basic
    @Column(name = "User")
    private String user;
    @Basic
    @Column(name = "Date")
    private Date date;
    @Basic
    @Column(name = "Type")
    private String type;
    @Basic
    @Column(name = "BookID")
    private int bookId;
    @Basic
    @Column(name = "PerformedBy")
    private String performedBy;
    @Basic
    @Column(name = "TableName")
    private String tableName;


}

package com.example.f34tur3s.domain;

import jakarta.persistence.*;

import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Entity
public class Event {

    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private Date date;
    private Time hour;
    private String location;
    private String description;
    private String image;
    @ManyToOne
    private Category category;
    @OneToMany
    private List<Comment> comment;

    public Event() {
    }

    public Event(String name, Date date, Time hour, String location, String description, String image, Category category, List<Comment> comment) {
        this.name = name;
        this.date = date;
        this.hour = hour;
        this.location = location;
        this.description = description;
        this.image = image;
        this.category = category;
        this.comment = comment;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getHour() {
        return hour;
    }

    public void setHour(Time hour) {
        this.hour = hour;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Event{" +
                "name='" + name + '\'' +
                ", date=" + date +
                ", hour=" + hour +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                ", category=" + category +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Event event = (Event) o;
        return Objects.equals(name, event.name) && Objects.equals(date, event.date) && Objects.equals(hour, event.hour) && Objects.equals(location, event.location) && Objects.equals(description, event.description) && Objects.equals(image, event.image) && Objects.equals(category, event.category);
    }

}

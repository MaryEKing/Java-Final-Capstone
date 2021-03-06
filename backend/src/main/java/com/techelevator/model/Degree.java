package com.techelevator.model;

import org.apache.tomcat.jni.Local;

import java.time.LocalDate;

public class Degree {
    private int degreeId;
    private Integer userId;
    private String level;
    private String institution;
    private String subjectArea;
    private LocalDate dateCompleted;

    public Degree(Integer userId, int degreeId, String level, String institution, String subjectArea, LocalDate dateCompleted) {
        this.userId = userId;
        this.degreeId = degreeId;
        this.level = level;
        this.institution = institution;
        this.subjectArea = subjectArea;
        this.dateCompleted = dateCompleted;
    }

    public Degree() {
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public int getDegreeId() {
        return degreeId;
    }

    public void setDegreeId(int degreeId) {
        this.degreeId = degreeId;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getSubjectArea() {
        return subjectArea;
    }

    public void setSubjectArea(String subjectArea) {
        this.subjectArea = subjectArea;
    }

    public LocalDate getDateCompleted() {
        return dateCompleted;
    }

    public void setDateCompleted(LocalDate dateCompleted) {
        this.dateCompleted = dateCompleted;
    }

    // @Override
    // public String toString() {
    //     return "AcademicExperience{" +
    //             "degreeId=" + degreeId +
    //             ", institution='" + institution + '\'' +
    //             ", level='" + level + '\'' +
    //             ", degreeType=" + degreeType + '\'' +
    //             ", subjectArea='" + subjectArea + '\'' +
    //             '}';
    // }
}

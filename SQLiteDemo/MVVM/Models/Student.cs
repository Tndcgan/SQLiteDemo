using System;
using SQLite;

namespace SQLiteDemo.MVVM.Models;

public class Student
{
    [PrimaryKey , AutoIncrement]
    public int ID { get ; set ;}
    
    [Column("student_id")]
    public string StudentId { get; set; }
    
    [Column("name")]
    public string Name { get; set; }
    
    [Column("group_no")]
    public int GroupNo { get; set; }

    [Column("avatar") , MaxLength(200)]
    public string Avatar { get; set; }

}
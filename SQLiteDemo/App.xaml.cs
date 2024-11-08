using SQLiteDemo.Repositories;

namespace SQLiteDemo;

public partial class App : Application
{
    public static StudentRepository _studentRepo { get; set; }
    public static CarRepository _carRepo { get; set; }
    public App(CarRepository carRepo)

    {
        InitializeComponent();

        _carRepo = carRepo;
        //_studentRepo = studentRepo;

        //MainPage = new AppShell();
        //MainPage = new StudentPage();
        MainPage = new CarPage();
    }
}
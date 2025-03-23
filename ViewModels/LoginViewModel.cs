using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using TrashTec_MVVM_5B.Models;
using TrashTec_MVVM_5B.View;

namespace TrashTec_MVVM_5B.ViewModels;

public class LoginViewModel : INotifyPropertyChanged
{
    private Usuario _usuario;

    public Usuario Usuario
    {
        get => _usuario;
        set
        {
            _usuario = value;
            OnPropertyChanged();
        }
    }

    public ICommand EntrarCommand { get; }
    public ICommand RecuperarCommand { get; }

    public event PropertyChangedEventHandler PropertyChanged;

    public LoginViewModel()
    {
        Usuario = new Usuario();
        EntrarCommand = new Command(OnEntrar);
        RecuperarCommand = new Command(OnRecuperar);
    }

    private async void OnEntrar()
    {
        // Lógica de autenticación aquí
        if (!string.IsNullOrEmpty(Usuario.Email) && !string.IsNullOrEmpty(Usuario.Password))
        {
            await Application.Current.MainPage.Navigation.PushAsync(new ());
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Error", "Por favor, completa todos los campos.", "OK");
        }
    }

    private async void OnRecuperar()
    {
        await Application.Current.MainPage.Navigation.PushAsync(new Recupararcontrasena());
    }

    protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
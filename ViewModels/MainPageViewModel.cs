using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using System.Windows.Input;
using Microsoft.Win32;
using TrashTec_MVVM_5B.Models;
using TrashTec_MVVM_5B.View;

namespace TrashTec_MVVM_5B.ViewModels;

public class RegistroViewModel : INotifyPropertyChanged
{
    private Usuario _usuario = new Usuario();
    private string _passwordError;
    private string _emailError;

    public string Nombre
    {
        get => _usuario.Nombre;
        set
        {
            _usuario.Nombre = value;
            OnPropertyChanged();
        }
    }

    public string Email
    {
        get => _usuario.Email;
        set
        {
            _usuario.Email = value;
            OnPropertyChanged();
            ValidateEmail();
        }
    }

    public string Password
    {
        get => _usuario.Password;
        set
        {
            _usuario.Password = value;
            OnPropertyChanged();
            ValidatePassword();
        }
    }

    public string PasswordError
    {
        get => _passwordError;
        set
        {
            _passwordError = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(IsPasswordErrorVisible));
        }
    }

    public string EmailError
    {
        get => _emailError;
        set
        {
            _emailError = value;
            OnPropertyChanged();
            OnPropertyChanged(nameof(IsEmailErrorVisible));
        }
    }

    public bool IsPasswordErrorVisible => !string.IsNullOrEmpty(PasswordError);
    public bool IsEmailErrorVisible => !string.IsNullOrEmpty(EmailError);

    private void ValidateEmail()
    {
        if (string.IsNullOrEmpty(Email) || !Regex.IsMatch(Email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
        {
            EmailError = "Por favor, ingresa un correo electr�nico v�lido.";
        }
        else
        {
            EmailError = string.Empty;
        }
    }

    private void ValidatePassword()
    {
        if (string.IsNullOrEmpty(Password) || Password.Length < 8 ||
            !Regex.IsMatch(Password, @"[A-Z]") ||
            !Regex.IsMatch(Password, @"[0-9]") ||
            !Regex.IsMatch(Password, @"[\W_]"))
        {
            PasswordError = "La contrase�a debe tener al menos 8 caracteres, una may�scula, un n�mero y un car�cter especial.";
        }
        else
        {
            PasswordError = string.Empty;
        }
    }

    public event PropertyChangedEventHandler PropertyChanged;

    protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    private async void OnLogin()
    {
        await Application.Current.MainPage.Navigation.PushAsync(new Login());
    }

}

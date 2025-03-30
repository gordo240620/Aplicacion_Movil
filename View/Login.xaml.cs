using TrashTec_MVVM_5B.Models;
using TrashTec_MVVM_5B.ViewModels;

namespace TrashTec_MVVM_5B.View;

public partial class Login : ContentPage
{
	public Login()
	{
		InitializeComponent();
	}
    new Usuario usuariologin;

    
    private async void Button_Clicked(object sender, EventArgs e)
    {
        bool loginExitoso = await ((LoginViewModel)BindingContext).IniciarSesion(usuariologin.email,usuariologin.contrasena);

        if (loginExitoso)
        {
            await DisplayAlert("Éxito", "Inicio de sesión exitoso", "OK");
            // 🔹 Redirigir a la pantalla de dispositivos
            await Navigation.PushAsync(new Principal());
        }
        else
        {
            await DisplayAlert("Error", "Correo o contraseña incorrectos", "OK");
        }
    }
}
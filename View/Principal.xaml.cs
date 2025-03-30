namespace TrashTec_MVVM_5B.View;

public partial class Principal : ContentPage

{
    public List<string> Dispositivos { get; set; }
    public Principal()
	{
		InitializeComponent();
        CargarDispositivos();
	}

    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Opciones());

    }

    private void CargarDispositivos()
    {
        // 🔹 Obtener el token y extraer la lista de dispositivos
        string token = Preferences.Get("AuthToken", string.Empty);

        if (!string.IsNullOrEmpty(token))
        {
            // 🔥 Decodificar el token si es necesario o consultar la API para obtener la lista
            Dispositivos = ObtenerDispositivosDesdeAPI(token);
            BindingContext = this;
        }
        else
        {
            DisplayAlert("Error", "No se pudo recuperar la sesión.", "OK");
            Navigation.PopAsync();
        }
    }

    private List<string> ObtenerDispositivosDesdeAPI(string token)
    {
        // Aquí puedes hacer una petición GET a la API para obtener los dispositivos del usuario autenticado
        return new List<string> { "Dispositivo 1", "Dispositivo 2", "Dispositivo 3" };
    }
}